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
parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd10};










endmodule
