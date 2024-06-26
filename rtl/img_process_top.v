module img_process_top #(
    parameter IMG_WIDTH  = 1280,
    parameter IMG_HEIGHT = 720
)(
    input           clk             ,
    input           reset           ,

    input   [23:0]  img_data_i      ,
    input           valid_i         ,

    output  [23:0]  next_img_data   ,
    output  [23:0]  cur_img_data        ,
    output  [23:0]  last_img_data      ,
    output          valid_o     

);

wire    [23:0]  img_yuv_data    ;
wire            img_yuv_valid   ;

wire    [23:0]  img_binary_data    ;
wire            img_binary_valid   ;

// img_rgb2gray u_img_rgb2gray(
//     .clk             (clk   ),
//     .reset           (reset ),

//     .img_data_i      (img_data_i),
//     .valid_i         (valid_i   ),

//     .img_data_o      (img_yuv_data ),
//     .valid_o         (img_yuv_valid)

// );   

// img_binary u_img_binary(
//     .clk             (clk  ),
//     .reset           (reset),

//     .img_data_i      (img_yuv_data ),
//     .valid_i         (img_yuv_valid),

//     .img_data_o      (img_binary_data ),
//     .valid_o         (img_binary_valid)

// );   

img_line_buffer u_img_line_buffer(
   .clk         (clk  ),
   .reset       (reset),

   .img_width   (IMG_WIDTH),
   .img_height  (IMG_HEIGHT),

   .valid_i     ( valid_i),
   .img_data_i      (img_data_i),

   .valid_o     (valid_o),
    .next_img_data  (),
    .cur_img_data   (),
    .last_img_data  ()
//    .img_data_o      (img_data_o   )

);


endmodule
