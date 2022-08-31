// Code your design here
module dff_synr (
  input logic [7:0]D,
  input logic clk,
  input logic reset,
  output logic [7:0]Q
);
  always_ff@(posedge clk or posedge reset)
  if (reset==0) Q<=D;
  else Q<=0;
  
endmodule
