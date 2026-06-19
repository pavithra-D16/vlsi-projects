module tb;
  reg i0, i1, i2, i3;
  wire y1, y0;
  encoder4to2 uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.y1(y1),.y0(y0));
  initial begin
    i0=1; i1=0; i2=0; i3=0; #10; 
    i0=0; i1=1; i2=0; i3=0; #10; 
    i0=0; i1=0; i2=1; i3=0; #10;
    i0=0; i1=0; i2=0; i3=1; #10;
    $finish;
  end
  initial $monitor("i0=%b i1=%b i2=%b i3=%b y1=%b y0=%b",i0, i1, i2, i3, y1, y0);
  endmodule