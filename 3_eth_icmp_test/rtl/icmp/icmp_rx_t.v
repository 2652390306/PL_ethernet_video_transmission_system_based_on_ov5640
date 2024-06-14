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










endmodule
