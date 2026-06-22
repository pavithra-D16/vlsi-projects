module tb;
  reg j, k, clk;
  wire q;
  jk_flipflop uut (.j(j), .k(k), .clk(clk), .q(q));
  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
    j=0; k=0; #10;
    j=0; k=1; #10;
    j=1; k=0; #10;
    j=1; k=1; #10;
    $finish;
  end
  initial $monitor("clk=%b j=%b k=%b q=b", clk, j, k, q);
endmodule