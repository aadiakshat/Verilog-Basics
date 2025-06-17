`timescale 1ns/1ps
module comparator_tb;
  reg [1:0]A,B;
  wire [2:0]C;
  com uut(.A(A),.B(B),.C(C));
  initial begin
  $display("time A B C");
  $display("___________");
  A = 2'b00; B = 2'b00; #10;
  A = 2'b01; B = 2'b01; #10;
  A = 2'b10; B = 2'b01; #10;
  A = 2'b11; B = 2'b01; #10;
  A = 2'b10; B = 2'b10; #10;
  A = 2'b11; B = 2'b11; #10;
  
  $finish;
  end
  initial begin
    $monitor("%0t\t%b\t%b\t%b",$time,A,B,C);
  end
endmodule