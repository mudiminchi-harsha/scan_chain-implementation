module tb_scan_chain;

reg clk, rst, scan_en;
reg [3:0] d;
reg scan_in;
wire scan_out;
wire [3:0] q;

scan_chain_4 dut (
    .clk(clk),
    .rst(rst),
    .scan_en(scan_en),
    .d(d),
    .scan_in(scan_in),
    .scan_out(scan_out),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    scan_en = 0;
    d = 4'b0000;
    scan_in = 0;

    #10 rst = 0;

    // NORMAL MODE
    #10;
    d = 4'b1010;
    scan_en = 0;

    #10;
    d = 4'b1100;

    // SCAN MODE
    #10;
    scan_en = 1;
    scan_in = 1;

    #10;
    scan_in = 0;

    #10;
    scan_in = 1;

    #10;
    scan_in = 1;

    #20;
    $finish;
end

endmodule

