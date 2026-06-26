// Module: 4-bit Ripple Carry Adder
// Description: Adds two 4-bit numbers using 4 chained Full Adders
// Author: Pavithra | EEE Final Year

module ripple_adder(input [3:0] a, b,input cin,output [3:0] sum,output cout);
wire c1, c2, c3;
  full_adder fa0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .carry(c1));
  full_adder fa1(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .carry(c2));
  full_adder fa2(.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .carry(c3));
  full_adder fa3(.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .carry(cout));
endmodule
module full_adder(input a,b,cin,output sum,carry);
  wire s1,c1,c2;
  assign s1 = a ^ b;
  assign c1 = a & b;
  assign sum = s1^ cin;
  assign c2 = s1 & cin;
  assign carry = c1 | c2;
endmodule