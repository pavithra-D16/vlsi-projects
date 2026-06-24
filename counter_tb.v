module tb;
  reg clk;
  reg reset;
  wire [3:0] count;
  counter_4bit uut (.clk(clk), .reset(reset), .count(count));
  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
    reset=1; #10;
    reset=0; #80;
    reset=1; #10;
    $finish;
  end
  initial $monitor("clk=%b reset=%b count=b", clk, reset, count);
endmodule