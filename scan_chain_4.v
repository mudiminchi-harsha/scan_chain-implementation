module scan_chain_4 (
    input clk,
    input rst,
    input scan_en,
    input [3:0] d,
    input scan_in,
    output scan_out,
    output [3:0] q
);

scan_dff dff0 (.d(d[0]), .scan_in(scan_in), .clk(clk), .rst(rst), .scan_en(scan_en), .q(q[0]));
scan_dff dff1 (.d(d[1]), .scan_in(q[0]),     .clk(clk), .rst(rst), .scan_en(scan_en), .q(q[1]));
scan_dff dff2 (.d(d[2]), .scan_in(q[1]),     .clk(clk), .rst(rst), .scan_en(scan_en), .q(q[2]));
scan_dff dff3 (.d(d[3]), .scan_in(q[2]),     .clk(clk), .rst(rst), .scan_en(scan_en), .q(q[3]));

assign scan_out = q[3];

endmodule

