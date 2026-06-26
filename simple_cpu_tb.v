module tb;
  reg [3:0] a, b;
  reg [2:0] opcode;
  reg clk, reset;
  wire [3:0] result;
  simple_cpu uut (.a(a), .b(b), .opcode(opcode), .clk(clk), .reset(reset), .result(result));
  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
    reset=1; #10
    reset=0;
    a=4'b1100; b=4'b1010; opcode=3'b000; #10;
    a=4'b1100; b=4'b1010; opcode=3'b010; #10;
    a=4'b1100; b=4'b1010; opcode=3'b101; #10;
    $finish;
  end
  initial $monitor("a=%b b=%b opcode=b clk=%b reset=%b result=%b", a, b, opcode, clk, reset, result);
endmodule