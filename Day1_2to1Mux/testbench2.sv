// Code your testbench here
// or browse Examples
module biggermux_tb ();
  logic [7:0] a_i;
  logic [7:0] b_i;
  logic sel;
  logic [7:0] y_o;
  biggermux2to1 M21(a_i,b_i,sel,y_o);
  
  initial begin
    for (int i=0; i<10;i++) begin
      a_i= $urandom_range(0, 8'hF);
      b_i= $urandom_range(0, 8'hF);
      sel=$random%2;
      #5;
      $display("a_i=%h, b_i=%h, sel=%b, y_o=%h", a_i, b_i, sel, y_o);
    end
  end
  
  initial begin
    $dumpfile("day1.vcd");
    $dumpvars(0,biggermux_tb);
    //$monitor("a_i=%h, b_i=%h, y_o=%h",a_i,b_i,y_o);
  end
  
endmodule
  
