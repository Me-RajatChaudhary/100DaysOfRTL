// Code your design here
module biggermux2to1 (
  input reg [7:0]a_i,
  input reg [7:0]b_i,
  input reg sel,
  output reg [7:0] y_o
);
  
  assign y_o = (sel) ? a_i: b_i;
endmodule
  
