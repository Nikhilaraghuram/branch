module debounce 
input pb,clk_in,
output led);

wire clk_out;
wire q1,q2,q2_bar;

slow_clock_4hz u1(clk_in, clk_out);
d_ff d1(clk_out, pb, q1);
d_ff d2(clk_out,q1, q2);

assign q2_bar =~q2;
assign led=q1 & q2_bar;
endmodule

