module crossbar_matrix(
    input wire [7:0] data_in1,    // 8-bit data from Input Port 1
    input wire [7:0] data_in2,    // 8-bit data from Input Port 2
    input wire sel1,              // Select signal for Output 1 (0: Input 1, 1: Input 2)
    input wire sel2,              // Select signal for Output 2 (0: Input 1, 1: Input 2)
    output reg [7:0] data_out1,   // 8-bit data to Output Port 1
    output reg [7:0] data_out2    // 8-bit data to Output Port 2
);
    always @(*) begin
        // Output 1 selection
        if (sel1 == 0)
            data_out1 = data_in1;
        else
            data_out1 = data_in2;
        
        // Output 2 selection
        if (sel2 == 0)
            data_out2 = data_in1;
        else
            data_out2 = data_in2;
    end
endmodule
