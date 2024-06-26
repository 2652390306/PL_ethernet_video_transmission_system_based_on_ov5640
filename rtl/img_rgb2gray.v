module img_rgb2gray(
    input           clk             ,
    input           reset           ,

    input   [23:0]  img_data_i      ,
    input           valid_i         ,

    output  [23:0]  img_data_o      ,
    output          valid_o

);   
// MODE : 1 平均值法  MODE : 2 加权平均值法
parameter MODE = 0  ;



// wire signals declearation
wire    [7:0]   R, G, B ;

assign {R, G, B} = img_data_i   ;

generate if(MODE) begin
    localparam DIVIDE = 9'd341;

    // reg signals declaration
    // 1/3 * 1024 = 341
    reg [17:0]   R_n        ;   // 最大值 255 * 3 * 341 = 260865
    reg [ 9:0]   rgb_avr    ;   
    reg [ 7:0]   Gray       ;   
    reg          valid_d0, valid_d1, valid_d2  ;

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            valid_d0 <= 'b0 ;
            rgb_avr <= 'b0 ;
        end
        else begin
            valid_d0 <= valid_i ;
            if(valid_i) begin
                rgb_avr <= R + G + B   ;
            end
        end
    end

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            valid_d1 <= 'b0 ;
            R_n <= 'b0  ;
        end
        else begin
            valid_d1 <= valid_d0    ;
            if(valid_d0) begin
                R_n <= rgb_avr * DIVIDE ;
            end
        end
    end

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            valid_d2 <= 'b0 ;
            Gray <= 'b0 ;
        end
        else begin
            valid_d2 <= valid_d1 ;
            if(valid_d1) begin
                Gray <= R_n[17:10]   ;
            end
        end
    end

    assign valid_o = valid_d2   ;
    assign img_data_o = {3{Gray}}   ;

end
else begin
    
    localparam W0 = 9'd306  ;
    localparam W1 = 10'd601 ;
    localparam W2 = 7'd116  ;

    reg [16:0]  R_n ;
    reg [17:0]  G_n ;
    reg [14:0]  B_n ;
    reg [17:0]  Y_r ;
    reg [7:0]   Y   ;
    reg         valid_d0, valid_d1, valid_d2  ;


    always @(posedge clk or posedge reset) begin
        if(reset) begin
            valid_d0 <= 'b0 ;
            R_n <= 'b0  ;
            G_n <= 'b0  ;
            B_n <= 'b0  ;
        end
        else begin
            valid_d0 <= valid_i ;
            if(valid_i) begin
                R_n <= W0 * R   ;
                G_n <= W1 * G   ;
                B_n <= W2 * B   ;
            end
        end
    end

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            valid_d1 <= 'b0 ;
            Y_r <= 'b0  ;
        end
        else begin
            valid_d1 <= valid_d0 ;
            if(valid_d0) begin
                Y_r <= R_n + G_n + B_n  ;
            end
        end
    end

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            valid_d2 <= 'b0 ;
            Y <= 'b0  ;
        end
        else begin
            valid_d2 <= valid_d1 ;
            if(valid_d1) begin
                Y <= Y_r[17:10] ;
            end
        end
    end

    assign valid_o = valid_d2   ;
    assign img_data_o = {3{Y}}       ;

end
endgenerate



endmodule
