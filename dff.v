module dff (
    input  d,
    input  clk,
    input  rst,      // synchronous reset
    output reg q
);

always @(posedge clk) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end

endmodule

