// Code your design here
module dff_nr (
  input wire [7:0]D,
  input wire clk,
  output logic [7:0]Q
);
  
  //Execute only on positive edge of clock for D Flip flop
  always_ff@(posedge clk)
    Q<=D;
endmodule
  
