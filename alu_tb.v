module tb;
  reg [3:0]a, b;
  reg [2:0]opcode;
  wire [3:0] result;
  alu uut (.a(a), .b(b), .opcode(opcode), .result(result));
  initial begin
    a=4'b1100; b=4'b1010;
    opcode=000; #10
    opcode=001; #10
    opcode=010; #10
    opcode=011; #10
    opcode=100; #10
    opcode=101; #10
    $finish;
  end
  initial $monitor("a=%b b=%b opcode=b result=%b", a, b, opcode, result);
endmodule