module input_port(
    input wire clk,
    input wire reset,
    input wire valid_in,       // Data valid signal
    input wire [7:0] data_in,  // 8-bit data input
    output reg valid_out,      // Valid output for further modules
    output reg [7:0] data_out  // Data output to crossbar
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            valid_out <= 0;
            data_out <= 0;
        end else if (valid_in) begin
            data_out <= data_in;  // Store input data
            valid_out <= 1;       // Indicate valid data
        end else begin
            valid_out <= 0;
        end
    end
endmodule
