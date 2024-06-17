module icmp_rx_t(
    input                clk         ,    //时钟信号
    input                rst_n       ,    //复位信号，低电平有效
    
    input                gmii_rx_dv  ,    //GMII输入数据有效信号
    input        [7:0]   gmii_rxd    ,    //GMII输入数据
    output  reg          rec_pkt_done,    //以太网单包数据接收完成信号
    output  reg          rec_en      ,    //以太网接收的数据使能信号
    output  reg  [ 7:0]  rec_data    ,    //以太网接收的数据
    output  reg  [15:0]  rec_byte_num,    //以太网接收的有效字数 单位:byte 

    output  reg  [15:0]  icmp_id     ,    //ICMP标识符
    output  reg  [15:0]  icmp_seq    ,    //ICMP序列号
    output  reg  [31:0]  reply_checksum   //接收数据校验
   
    );

//parameter define
//开发板MAC地址 00-11-22-33-44-55
parameter BOARD_MAC = 48'h00_11_22_33_44_55; 
//开发板IP地址 192.168.1.10 
parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd10}    ;

localparam ICMP_HEAD_LENGTH = 8 ;
localparam ETH_TYPE = 16'h0800  ;
localparam ICMP_TYPE = 8'h01    ;
//ICMP报文类型:回显请求
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
                    获取IP的首部长度和IP数据报总长度
                */
                if(gmii_rx_dv) begin
                    if(cnt == 0 ) begin
                        ip_head_length <= {gmii_rxd[3:0], 2'b0}   ; // 向左移位2bit == 乘4
                    end
                    else if(cnt >= 2 && cnt <=3) begin
                        ip_total_length <= {ip_total_length[7:0], gmii_rxd}  ;
                    end
                    else if(cnt == 4) begin
                        // 获取ICMP的数据格式
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
                                回显请求（Echo Request）： 这是由发送方（例如，一个计算机或网络设备）发送给目标设备的消息，
                                                            用于测试目标设备的可达性。
                                回显应答（Echo Reply）： 这是由接收到回显请求的目标设备发送回给发送方的回复消息，
                                                            表示目标设备是可达的并且回应了请求。
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
                    1.数据分块：将要计算校验和的数据按16位（2字节）一组进行分块。
                        如果数据总长度为奇数个字节，在计算之前，需在末尾补一个字节的零（0x00）。
                    2.求和：对所有16位的块进行二进制求和，得到一个32位的中间结果。
                    3.高低位相加：如果求和结果超过16位，需要将溢出的高16位与低16位再相加，直到结果在16位范围内。
                        比如，如果求和结果为0x12345，则需要将0x2345（低16位）与0x1（高16位）相加，得到0x2346。
                    4.取反：对求和结果按位取反，得到最终的校验和。
                */       
                //接收数据           
                if(gmii_rx_dv) begin
                    rec_en_cnt <= rec_en_cnt + 2'd1;
                    icmp_rx_cnt <= icmp_rx_cnt + 16'd1;
					rec_data <= gmii_rxd;
					rec_en <= 1'b1;

					//判断接收到数据的奇偶个数
                   if (icmp_rx_cnt == icmp_data_length - 1) begin                      
                        icmp_rx_data_d0 <= 8'h00;
                        if(icmp_data_length[0])		//判断接收到数据是否为奇数个数
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
                        st_done <= 1'b1;                    //有效数据接收完成
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
