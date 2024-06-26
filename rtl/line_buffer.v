module line_buffer(
    input           clk         ,
    input           reset       ,

    input   [10:0]  img_width   ,

    input           valid_i     ,
    input   [23:0]  data_i      ,

    output          valid_o     ,
    output  [23:0]  data_o

);

wire    rd_en   ;
wire    [10:0]  data_count  ;

reg     [10:0]  wr_cnt  ;
reg     rd_en_d ;

assign rd_en =  (wr_cnt == img_width && valid_i) ? 1'b1 : 1'b0 ;

assign valid_o = rd_en_d  ;

always @(posedge clk) begin
   rd_en_d <= rd_en ; 
end

always @(posedge clk or posedge reset) begin
    if(reset) begin
        wr_cnt <= 'b0   ;
    end
    else begin
        wr_cnt <= (valid_i && wr_cnt < img_width) ? (wr_cnt + 1) : wr_cnt    ;    
    end
end




fifo_generator_0 u_fifo (
    .clk          (clk  )           ,                // input wire clk
    .srst         (reset)          ,              // input wire srst
    .din          (data_i)           ,                  // input wire [22 : 0] din
    .wr_en        (valid_i)         ,            // input wire wr_en

    .rd_en        (rd_en)         ,            // input wire rd_en
    .dout         (data_o)          ,              // output wire [22 : 0] dout
    .full         ()          ,              // output wire full
    .empty        ()         ,            // output wire empty
    .data_count   (data_count)      // output wire [10 : 0] data_count
)   ;













endmodule
