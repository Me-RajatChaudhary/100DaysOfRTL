// Code your testbench here
module dff_nr_tb();
  logic [7:0]D;
  logic clk;
  logic [7:0]Q;
  
  //Instantiate RTL
  dff_nr D1(.*);
  
  //Drive Stimulus
  initial begin
    clk=1'b1;
    for (int i=0;i<10;i++) begin      
      D = $urandom_range(0,8'hFF);
      #5;
    end
  end
  
  //Generate Clock
  always #5 clk = ~clk;
  
  //DUmp files
  initial begin
    $dumpfile("dff_nr_tb.vcd");
    $dumpvars(0,dff_nr_tb);
    $monitor($time, " D = %h, Q= %h", D, Q);
  end
  
endmodule
