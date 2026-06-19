module tb;
  reg i , sel;
  wire y0 , y1;
  demux1to2 uut(.i(i),.sel(sel),.y0(y0),.y1(y1));
  initial begin
    i=0; sel=0; #10;
    i=0; sel=1; #10;
    i=1; sel=0; #10;
    i=1; sel=1; #10; 
    $finish;
  end
  initial $monitor("i=%b sel=%b y0=%b y1=%b",i,sel,y0,y1);
  endmodule