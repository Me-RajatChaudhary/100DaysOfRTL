// Code your testbench here
// or browse Examples
module edge_detector_tb();
  logic clk;
  logic D;
  logic Q;
  logic pos_pulse;
  logic neg_pulse;
  
  edge_detector ED(.*);
  
  initial begin
    clk=1'b1;
    D=1'b1;
    #60 $finish;
  end
  
  always begin
    #2 clk =~clk;
  end
  
  always #3 D=~D;
  
  initial begin
    $dumpfile("edge_detector.vcd");
    $dumpvars(0, edge_detector_tb);
    $monitor($time, " clk=%b, D=%b, Q=%b, pos_pulse=%b, neg_oulse=%b", clk, D, Q, pos_pulse, neg_pulse);
  end
  
endmodule
