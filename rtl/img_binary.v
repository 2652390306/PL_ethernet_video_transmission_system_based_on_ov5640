module img_binary(
    input           clk     ,
    input           reset   ,

    input   [23:0]  img_data_i  ,
    input           valid_i     ,

    output  [23:0]  img_data_o  ,
    output          valid_o

)   ;

parameter Threshold = 127;

// wire signals declaration
wire    [7:0]   Y, U, V ;

assign {Y, U, V} = img_data_i   ;


// reg signals declaration
reg [7:0]   binary  ;
reg valid_d0    ;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        valid_d0 <= 'b0 ;
        binary <= 'b0   ;
    end
    else begin
        valid_d0 <= valid_i ;
        if(valid_i) begin
            binary <= (Y > Threshold) ? 8'hff : 8'h00   ;
        end
    end
end

assign valid_o = valid_d0   ;
assign img_data_o = {3{binary}} ;






endmodule
