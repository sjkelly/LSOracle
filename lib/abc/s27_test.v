module top(clock , a , b , c , d , f );
  input clock , a , b , c , d ;
  output f ;
  reg lo0 , lo1 , lo2 ;
  wire new_n9, new_n10, new_n11, new_n12, new_n13, new_n14, new_n15, new_n16, n33, n36, n39;
  assign new_n9 = ~a & lo1 ;
  assign new_n10 = ~d & ~new_n9 ;
  assign new_n11 = ~b & ~lo2 ;
  assign new_n12 = ~new_n9 & ~new_n11 ;
  assign new_n13 = ~new_n10 & ~new_n12 ;
  assign new_n14 = ~lo0 & new_n13 ;
  assign new_n15 = a & ~new_n14 ;
  assign new_n16 = ~c & ~new_n11 ;
  assign f = ~new_n14 ;
  assign n33 = new_n15 ;
  assign n36 = new_n14 ;
  assign n39 = new_n16 ;
 always @ (negedge clock) begin
    lo0 <= n33 ;
 end
 always @ (negedge clock) begin
    lo1 <= n36 ;
 end
 always @ (negedge clock) begin
    lo2 <= n39 ;
 end
 initial begin
    lo0 <= 1'b1;
    lo1 <= 1'b1;
    lo2 <= 1'b1;
 end
endmodule