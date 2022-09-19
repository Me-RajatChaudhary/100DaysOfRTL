// Code your design here
module shift_register (
  input clk,
  input reset,
  input D,
  output out
);
  
  logic Q1, Q2, Q3, Q4;

  always@(posedge clk or posedge reset) begin
    if (reset) Q1 = 0;
    else Q1 <= D;
  end
  
  always@(posedge clk or posedge reset) begin
    if (reset) Q2 = 0;
    else Q2 <= Q1;
  end
  
  always@(posedge clk or posedge reset) begin
    if (reset) Q3 = 0;
    else Q3 <= Q2;
  end
  
  always@(posedge clk or posedge reset) begin
    if (reset) Q4 = 0;
    else Q4 <= Q3;
  end
  
  assign out = Q4;
  
  
endmodule
