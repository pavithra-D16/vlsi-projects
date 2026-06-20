module decoder2to4(input sel1, sel0,output y0, y1, y2, y3);
  assign y0 = (~sel1) & (~sel0);
  assign y1 = (~sel1) & (sel0);
  assign y2 = (sel1) & (~sel0);
  assign y3 = (sel1) & (sel0);
endmodule
