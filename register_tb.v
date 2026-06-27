module tb;
  reg [3:0] d;
  reg clk;
  wire [3:0] q;
  register_4bit uut (.d(d), .clk(clk), .q(q));
  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
    d=4'b1010; #10;
    d=4'b1100; #10;
    d=4'b0101; #10;
    d=4'b1111; #10;
    $finish;
  end
  initial $monitor("clk=%b d=%b q=b", clk, d, q);
endmodule