// Code your design here
module odd_counter (
  input wire clk,
  input wire reset,
  output logic [7:0]count_o
);
  
  logic [7:0] next_count;
  
  always@(posedge clk or posedge reset) begin
    if (reset)
      count_o <= 8'h1;
    else
      count_o <= next_count;
  end
  
  assign next_count = count_o + 8'h2;
        
endmodule
