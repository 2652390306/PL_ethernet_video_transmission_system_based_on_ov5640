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
parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd10};

localparam ETH_TYPE = 16'h0800  ;
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

reg         st_done, rx_done, error_en ;


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
            
        end

        st_icmp_head : begin
            
        end

        st_rx_data : begin
            
        end

        st_rx_end : begin
            
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
        des_mac_t   <= 'b0  ;
    end
    else begin
        error_en <= 'b0 ;
        st_done <= 'b0  ;
        cnt <= cnt + 'b1    ;
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
                if(gmii_rx_dv) begin
                    if(cnt <=3 ) begin
                        
                    end
                end
            end

        endcase
    end
end


endmodule
