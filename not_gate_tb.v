module tb;
  reg a;
  wire y;
  not_gate uut(.a(a),.y(y));
  initial begin
    a=0; #10;
    a=1; #10;
    $finish;
  end
  initial $monitor("a=%b y=%b",a,y);
  endmodule