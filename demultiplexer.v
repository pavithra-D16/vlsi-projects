module demux1to2(input i,sel,output y0 , y1);
  assign y0 = (sel == 0) ? i : 0;
  assign y1 = (sel == 1) ? i : 0;
endmodule