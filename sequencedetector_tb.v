
`timescale 1ns/1ps

module detector_tb;

  reg clk, reset, a;
  wire i;

  
  detector uut (
    .a(a),
    .clk(clk),
    .reset(reset),
    .i(i)
  );

  
  always #5 clk = ~clk;

  initial begin
    
    $dumpfile("detector.vcd");
    $dumpvars(0, detector_tb);

    // Initialize inputs
    clk = 0;
    reset = 0;
    a = 0;

    
    #10;
    reset = 1;


    #10 a = 0;
    #10 a = 1;
    #10 a = 1;
    #10 a = 1;
    #10 a = 1; // Output should become 1 here
    #10 a = 0;
    #10 a = 1;
    #10 a = 1;
    #10 a = 0;
    #10 a = 1;
    #10 a = 1;
    #10 a = 1;
    #10 a = 1; // Again output should be 1 here

    
    #20;
    $finish;
  end
  always @(posedge clk) begin
    $display("0%t\t%b\t%b",$time,a,i);
  end
endmodule
