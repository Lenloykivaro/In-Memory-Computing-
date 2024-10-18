module output_port(
    input wire clk,
    input wire reset,
    input wire valid_in,       // Data valid signal from crossbar
    input wire [7:0] data_in,  // 8-bit data input from crossbar
    output reg [7:0] data_out  // Final data output
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            data_out <= 0;
        end else if (valid_in) begin
            data_out <= data_in;  // Pass input data to output
        end
    end
endmodule
