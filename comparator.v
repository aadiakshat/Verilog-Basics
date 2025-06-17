
module com(A,B,C);
  input [1:0] A,B;
  output [2:0]C;
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14;
  not(w3,A[1]);
  not(w6,A[0]);
  not(w8,B[1]); 
  not(w11,B[0]);
  xnor(w1,A[0],B[0]);
  xnor(w2,A[1],B[1]);
  and(C[0],w1,w2);
  and(w4,w3,B[1]);
  and(w5,w1,w4);
  and(w7,w6,B[0]);
  and(w9,w8,A[1]);
  and(w10,w1,w9);
  and(w12,w11,A[0]);
  and(w13,w12,w4);
  and(w14,w9,w7);
  or(C[1],w5,w7,w14);
  or(C[2],w10,w12,w13);
endmodule
  
  
  
  