
`timescale 1ns/1ns;
module mux_tb;
  wire y;
  reg a,b,s;
  int i,j,k;
  
  mux uut(.s(s),.a(a),.b(b),.y(y));
  
  initial begin
    $display("T       S       A       B       Y");
    $display("__________________________________");
    $dumpfile("dump.vcd");
    $dumpvars(0,mux_tb);
    
    for (i=0;i<2;i++)begin
      s=i;
      for(j=0;j<2;j++)begin
        for(k=0;k<2;k++)begin
          a=j;b=k;#1;
        end
      end
    end
    $finish;
  end
  initial begin
    $monitor("%0t\t%b\t%b\t%b\t%b",$time,s,a,b,y);
  end
endmodule
    