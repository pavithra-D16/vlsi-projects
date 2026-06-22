module tb;
  reg d, clk;
  wire q;
  d_flipflop uut (.d(d), .clk(clk), .q(q));
  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
    d=0; #10;
    d=1; #10;
    d=0; #10;
    d=1; #10;
    $finish;
  end
  initial $monitor("clk=%b d=%b q=b", clk, d,q);
endmodule