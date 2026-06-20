module tb;
  reg sel1, sel0;
  wire y0, y1, y2, y3;
  decoder2to4 uut(.sel1(sel1),.sel0(sel0),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  initial begin
    sel1=0; sel0=0; #10; 
    sel1=0; sel0=1; #10; 
    sel1=1; sel0=0; #10;
    sel1=1; sel0=1; #10;
    $finish;
  end
  initial $monitor("sel1=%b sel0=%b y0=%b y1=%b y2=%b y3=%b",sel1, sel0,y0, y1, y2, y3);
  endmodule