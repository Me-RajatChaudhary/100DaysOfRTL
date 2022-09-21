// Under progress
module day7 (
  input wire clk,
  input wire reset,
  output reg [3:0]lfsr_o
);
  
  logic [3:0] lfsr_ff, nxt_lfsr;
  
  always_ff@(posedge clk or negedge reset) begin
    if(reset)
      lfsr_o <= 4'hE;
    else
      lfsr_o <= nxt_lfsr;
  end
  
  assign nxt_lfsr = {lfsr_ff[2:0], lfsr_ff[1] ^ lfsr_ff[3]};
    
endmodule
  
