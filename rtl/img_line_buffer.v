module img_line_buffer(
    input           clk ,
    input           reset   ,

    input   [10:0]   img_width   ,
    input   [ 9:0]   img_height  ,

    input   [23:0]  img_data_i  ,
    input           valid_i ,
    
    output reg  [23:0]  next_img_data  ,
    output reg  [23:0]  cur_img_data   ,
    output reg  [23:0]  last_img_data  ,
    output reg          valid_o

);

parameter N = 3 ;

// wire signals declaration
wire valid   [0:N-1]   ;
wire    [23:0]  data    [0:N-1] ;

// reg signals declaration
reg [ 9:0]  img_data_row_cnt    ;
reg [10:0]  img_data_col_cnt    ;


// combination declaration
assign data[0] = img_data_i ;
assign valid[0] = valid_i   ;


// sequential declaration
genvar i    ;
generate
    for(i=1; i<N; i=i+1) 
    begin : lb
        line_buffer u_line_buffer(
            .clk         (clk  ),
            .reset       (reset),

            .img_width   (img_width),

            .valid_i     (valid[i-1]),
            .data_i      (data[i-1]),

            .valid_o     (valid[i]),
            .data_o      (data[i])
        );
    end
endgenerate

always @(posedge clk or posedge reset) begin
    if(reset) begin
        img_data_row_cnt <= 'b0 ;
        img_data_col_cnt <= 'b0 ;
    end
    else begin
        img_data_col_cnt <= (img_data_col_cnt == img_width-1 && valid[N-2]) ? 0 : (valid[N-2] ? img_data_col_cnt + 1 : img_data_col_cnt) ;
        img_data_row_cnt <= (img_data_col_cnt == img_width-1 && valid[N-2]) ? 
                                ((img_data_row_cnt == img_height -1 ) ?  0 : img_data_row_cnt + 1) : img_data_row_cnt   ;
    end
end


always @(posedge clk or posedge reset) begin
    if(reset) begin
        next_img_data <= 'b0    ;
        cur_img_data  <= 'b0    ;
        last_img_data <= 'b0    ;    
    end
    else begin
        valid_o <= valid[N-2]   ;
        if(valid[N-2]) begin
            if(img_data_row_cnt == 0) begin
                next_img_data <= data[0] ;
                cur_img_data   <= data[1] ;
                last_img_data <= 24'h0  ;
            end
            else if(img_data_row_cnt == img_height-1) begin
                next_img_data <= 24'h0 ;
                cur_img_data   <= data[1] ;
                last_img_data <= data[2] ;
            end
            else begin
                next_img_data <= data[0] ;
                cur_img_data   <= data[1] ;
                last_img_data <= data[2] ;
            end
        end
    end
end



endmodule
