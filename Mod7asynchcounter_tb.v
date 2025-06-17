
`timescale 1ns/1ns
module jff_tb;
  reg clk,reset;
  wire [2:0]y;
  
  bc uut(.clk(clk),.reset(reset),.y(y));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    $dumpfile()"dump.vcd");
    $dumpvars(0,jff_tb)
    reset=0;#10;
    reset=1;
    #120;
    $finish;
  end
  
  always @(posedge clk) begin
    $display("%0t\t%b\t%b",$time,clk,y);
  end
endmodule
  
    
    