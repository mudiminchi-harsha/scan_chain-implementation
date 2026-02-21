module scan_dff (
    input  d,        
    input  scan_in,  
    input  clk,      
    input  rst,      
    input  scan_en,  
    output reg q     
);

wire d_sel;

// 2:1 MUX: selects normal data or scan data
assign d_sel = scan_en ? scan_in : d;

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d_sel;
end

endmodule

