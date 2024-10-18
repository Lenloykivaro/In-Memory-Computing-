module flow_control(
    input wire valid_in,       // Data valid signal from input
    input wire ready_out,      // Ready signal from output
    output wire ready_in,      // Ready signal for input
    output wire valid_out      // Valid signal for output
);
    assign ready_in = ready_out; // Forward the ready signal to input
    assign valid_out = valid_in; // Forward the valid signal to output
endmodule
