// Code your testbench here
// or browse Examples
module tb_oddcounter();
  logic clk;
  logic reset;
  logic [7:0]count_o;
  
  //Instantiate RTL
  odd_counter odc(.*);
  
  //Drive-stimulus
  initial begin
    clk=1'b0;
    reset=1'b1;
    #2;
	reset =1'b0;
    #60 $finish;
  end
  
  //Generate clock
  always #2 clk= ~clk;      
  
  //Dump files, monitor outputs
  initial begin
    $dumpfile("oddcounter.vcd");
    $dumpvars(0, tb_oddcounter);
    $monitor($time, " reset=%b, clk=%b, count=%h", reset, clk, count_o);
  end
  
endmodule
