module icmp_rx_t(
    input                clk         ,    //ʱ���ź�
    input                rst_n       ,    //��λ�źţ��͵�ƽ��Ч
    
    input                gmii_rx_dv  ,    //GMII����������Ч�ź�
    input        [7:0]   gmii_rxd    ,    //GMII��������
    output  reg          rec_pkt_done,    //��̫���������ݽ�������ź�
    output  reg          rec_en      ,    //��̫�����յ�����ʹ���ź�
    output  reg  [ 7:0]  rec_data    ,    //��̫�����յ�����
    output  reg  [15:0]  rec_byte_num,    //��̫�����յ���Ч���� ��λ:byte 

    output  reg  [15:0]  icmp_id     ,    //ICMP��ʶ��
    output  reg  [15:0]  icmp_seq    ,    //ICMP���к�
    output  reg  [31:0]  reply_checksum   //��������У��
   
    );

//parameter define
//������MAC��ַ 00-11-22-33-44-55
parameter BOARD_MAC = 48'h00_11_22_33_44_55; 
//������IP��ַ 192.168.1.10 
parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd10}    ;

localparam ICMP_HEAD_LENGTH = 8 ;
localparam ETH_TYPE = 16'h0800  ;
localparam ICMP_TYPE = 8'h01    ;
//ICMP��������:��������
localparam ECHO_REQUEST = 8'h08 ; 

// machine state's state definition
localparam st_idle      = 6'b000_000    ;
localparam st_preamble  = 6'b000_001    ;
localparam st_eth_head  = 6'b000_010    ;
localparam st_ip_head   = 6'b000_100    ;
localparam st_icmp_head = 6'b001_000    ;
localparam st_rx_data   = 6'b010_000    ;
localparam st_rx_end    = 6'b100_000    ;

reg [5:0]   cur_st  ;
reg [5:0]   next_st ;

reg [9:0]   cnt     ;
reg [15:0]  eth_type    ;
reg [47:0]  des_mac_t   ;
reg [31:0]  des_ip_t    ;

reg         st_done, rx_done, error_en  ;


reg [ 7:0]  icmp_type                   ;
reg [ 7:0]  icmp_code                   ;
reg [15:0]  icmp_checksum               ;
reg [15:0]  icmp_identifier             ;
reg [15:0]  icmp_seq_num                ;

reg [ 5:0]  ip_head_length              ;
reg [15:0]  ip_total_length             ;
reg [15:0]  icmp_data_length            ;

reg [ 1:0]   rec_en_cnt                 ;
reg [15:0]  icmp_rx_cnt                 ;
reg [ 7:0]  icmp_rx_data_d0             ;
reg [31:0]  reply_checksum_add          ;


always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cur_st <= st_idle   ;
    end
    else begin
        cur_st <= next_st   ;        
    end
end

always @(*) begin
    case(cur_st)
        st_idle : begin
            if(st_done)
                next_st = st_preamble   ;
            else
                next_st = st_idle       ;
        end

        st_preamble : begin
            if(error_en)
                next_st = st_rx_end     ;
            else if(st_done)
                next_st = st_eth_head   ;
            else
                next_st = st_preamble   ;
        end

        st_eth_head : begin
            if(error_en)
                next_st = st_rx_end     ;
            else if(st_done)
                next_st = st_ip_head    ;
            else
                next_st = st_eth_head   ;
        end

        st_ip_head : begin
            if(error_en)
                next_st <= st_rx_end    ;
            else if(st_done)
                next_st <= st_icmp_head ;
            else
                next_st <= st_ip_head   ;
        end

        st_icmp_head : begin
            if(error_en)
                next_st <= st_rx_end    ;
            else if(st_done)
                next_st <= st_rx_data ;
            else
                next_st <= st_icmp_head   ;
        end

        st_rx_data : begin
            if(st_done)
                next_st <= st_rx_data   ;
            else
                next_st <= st_rx_end    ;
        end

        st_rx_end : begin
            if(st_done)
                next_st = st_idle   ;
            else
                next_st = st_rx_end ;
        end
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        eth_type    <= 'b0  ;
        cnt         <= 'b0  ;
        st_done     <= 'b0  ;
        rx_done     <= 'b0  ;
        error_en    <= 'b0  ;
        des_ip_t    <= 'b0  ;
        des_mac_t   <= 'b0  ;
        ip_head_length <= 'b0 ;
        ip_total_length <= 'b0  ;
        icmp_data_length <= 'b0 ;

        icmp_type       <= 'b0            ;
        icmp_code       <= 'b0            ;
        icmp_checksum   <= 'b0            ;
        icmp_identifier <= 'b0            ;
        icmp_seq_num    <= 'b0            ;

        rec_en_cnt <= 2'd0;
        rec_en <= 1'b0;
        rec_data <= 32'd0;
        rec_pkt_done <= 1'b0;
        rec_byte_num <= 16'd0;
    end
    else begin
        error_en <= 'b0 ;
        st_done <= 'b0  ;
        cnt <= cnt + 'b1    ;
        rec_pkt_done <= 1'b0;
        case(next_st)
            st_idle : begin
                cnt <= 'b0  ;
                if(gmii_rx_dv == 1'b1 && gmii_rxd == 8'h55)
                    st_done <= 1'b1 ;
                else
                    st_done <= 1'b0 ;
            end

            st_preamble : begin
                if(gmii_rx_dv) begin
                    if(cnt <= 5 && gmii_rxd != 8'h55)
                        error_en <= 1'b1    ;
                    else    ;

                    if(cnt == 6) begin
                        cnt <= 'b0  ;
                        if(gmii_rxd == 8'hd5)
                            st_done <= 1'b1     ;
                        else
                            error_en <= 1'b1    ;
                    end else ;
                end
                else ;
            end

            st_eth_head : begin
                if(gmii_rx_dv) begin
                    if(cnt <= 5)
                        des_mac_t <= {des_mac_t[39:0], gmii_rxd}    ;
                    else if(cnt > 11 && cnt <= 13) begin
                        eth_type <= {eth_type[7:0], gmii_rxd}       ;
                        if(cnt == 13) begin
                            cnt <= 'b0  ;
                            if((des_mac_t == BOARD_MAC || des_mac_t == 48'hff_ff_ff_ff_ff_ff) && 
                                eth_type[7:0] == ETH_TYPE[15:8] && gmii_rxd == ETH_TYPE[7:0])
                                st_done <= 1'b1     ;
                            else
                                error_en <= 1'b1    ;
                        end
                    end
                    else ;                   
                end
                else ;
            end

            st_ip_head : begin
                /*
                    ��ȡIP���ײ����Ⱥ�IP���ݱ��ܳ���
                */
                if(gmii_rx_dv) begin
                    if(cnt == 0 ) begin
                        ip_head_length <= {gmii_rxd[3:0], 2'b0}   ; // ������λ2bit == ��4
                    end
                    else if(cnt >= 2 && cnt <=3) begin
                        ip_total_length <= {ip_total_length[7:0], gmii_rxd}  ;
                    end
                    else if(cnt == 4) begin
                        // ��ȡICMP�����ݸ�ʽ
                        icmp_data_length <= ip_total_length - ip_head_length - ICMP_HEAD_LENGTH ;
                    end
                    else if(cnt == 9) begin
                        if(gmii_rxd != ICMP_TYPE) begin
                            error_en <= 1'b1    ;
                            cnt      <= 'b0     ;
                        end
                    end
                    else if(cnt >= 16 && cnt <= 19) begin
                        des_ip_t <= {des_ip_t[23:0], gmii_rxd}  ;
                        if(cnt == 19) begin
                            if(des_ip_t[23:0] == BOARD_IP[31:8] && gmii_rxd == BOARD_IP[7:0]) begin
                                st_done <= 1'b1 ;
                                cnt     <= 'b0  ;
                            end
                            else begin
                                error_en <= 1'b1    ;
                                cnt      <= 0       ;
                            end
                        end
                    end
                    else ;
                end
                else ;
            end

            st_icmp_head : begin
                if(gmii_rx_dv) begin
                    if(cnt == 0) begin
                        icmp_type <= gmii_rxd   ;
                    end
                    else if(cnt == 1) begin
                        icmp_code <= gmii_rxd   ;
                    end
                    else if(cnt >= 2 && cnt <= 3) begin
                        icmp_checksum <= {icmp_checksum[7:0], gmii_rxd} ;
                    end
                    else if(cnt >= 4 && cnt <= 5) begin
                        icmp_identifier <= {icmp_identifier[7:0], gmii_rxd} ;
                    end
                    else if(cnt >= 6 && cnt <= 7) begin
                        icmp_seq_num <= {icmp_seq_num[7:0], gmii_rxd}   ;
                        if(cnt == 7) begin
                            /*
                                ��������Echo Request���� �����ɷ��ͷ������磬һ��������������豸�����͸�Ŀ���豸����Ϣ��
                                                            ���ڲ���Ŀ���豸�Ŀɴ��ԡ�
                                ����Ӧ��Echo Reply���� �����ɽ��յ����������Ŀ���豸���ͻظ����ͷ��Ļظ���Ϣ��
                                                            ��ʾĿ���豸�ǿɴ�Ĳ��һ�Ӧ������
                            */
                            if(icmp_type == ECHO_REQUEST)begin
                                st_done <= 1'b1 ;
                                cnt <= 'b0  ;
                            end
                            else begin
                                error_en <= 1'b1    ;
                                cnt <= 'b0  ;
                            end

                        end
                        else ;
                    end
                    else ;
                end
                else ;
            end

            st_rx_data :  begin  
                /*
                    1.���ݷֿ飺��Ҫ����У��͵����ݰ�16λ��2�ֽڣ�һ����зֿ顣
                        ��������ܳ���Ϊ�������ֽڣ��ڼ���֮ǰ������ĩβ��һ���ֽڵ��㣨0x00����
                    2.��ͣ�������16λ�Ŀ���ж�������ͣ��õ�һ��32λ���м�����
                    3.�ߵ�λ��ӣ������ͽ������16λ����Ҫ������ĸ�16λ���16λ����ӣ�ֱ�������16λ��Χ�ڡ�
                        ���磬�����ͽ��Ϊ0x12345������Ҫ��0x2345����16λ����0x1����16λ����ӣ��õ�0x2346��
                    4.ȡ��������ͽ����λȡ�����õ����յ�У��͡�
                */       
                //��������           
                if(gmii_rx_dv) begin
                    rec_en_cnt <= rec_en_cnt + 2'd1;
                    icmp_rx_cnt <= icmp_rx_cnt + 16'd1;
					rec_data <= gmii_rxd;
					rec_en <= 1'b1;

					//�жϽ��յ����ݵ���ż����
                   if (icmp_rx_cnt == icmp_data_length - 1) begin                      
                        icmp_rx_data_d0 <= 8'h00;
                        if(icmp_data_length[0])		//�жϽ��յ������Ƿ�Ϊ��������
                            reply_checksum_add <= {8'd0,gmii_rxd} + reply_checksum_add;                           
                        else
                            reply_checksum_add <= {icmp_rx_data_d0,gmii_rxd} + reply_checksum_add;    
                    end
                    else if(icmp_rx_cnt < icmp_data_length) begin
                        icmp_rx_data_d0 <= gmii_rxd;
                        icmp_rx_cnt <= icmp_rx_cnt + 16'd1;
                        if (icmp_rx_cnt[0] == 1'b1)
                            reply_checksum_add <= {icmp_rx_data_d0,gmii_rxd} + reply_checksum_add; 
                        else
                            reply_checksum_add <= reply_checksum_add; 
                    end
					else;

                    if(icmp_rx_cnt == icmp_data_length - 16'd1) begin
                        st_done <= 1'b1;                    //��Ч���ݽ������
                        icmp_rx_cnt <= 16'd0;
                        rec_en_cnt <= 2'd0;
                        rec_pkt_done <= 1'b1;               
                        rec_byte_num <= icmp_data_length;
                    end 
					else;
                end
				else;
            end

            st_rx_end : begin
                rec_en <= 1'b0  ;
                if(gmii_rx_dv == 1'b0 && st_done == 1'b0) begin
                    reply_checksum      <= reply_checksum_add    ;
                    st_done             <= 1'b1                  ;
                    reply_checksum_add  <= 32'd0             ;
                end
                else ;
            end

            default : ;
        endcase
    end
end


endmodule
