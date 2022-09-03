// Code your design here
module edge_detector (
  input wire clk,
  input wire D,
  output reg Q,
  output reg pos_pulse,
  output reg neg_pulse
);
  always_ff@(posedge clk) 
    Q<=D;
    
  //always@(posedge clk or posedge D or negedge clk) begin
    assign pos_pulse= (D) & ~(Q);    
  //end
  
  //always@(negedge clk or negedge D or posedge clk) 
    assign neg_pulse=~(D) & (Q);
    
  
endmodule
