// knight flasher
// bit slice again
module knight6mid(input ck, input res, input up, input iupper, input ilower, output out);
  reg out;

  always @(posedge ck) begin
    if (res)
      out <= 0;
    else begin
      if (up)
        out <= ilower;
      else
        out <= iupper;
    end
  end
endmodule

module knight6lsb(input ck, input res, input up, input iupper, output out);
  reg out;

  always @(posedge ck) begin
    if (res)
      out <= 1;
    else begin
      if (up)
        out <= 0;
      else
        out <= iupper;
    end
  end
endmodule

module knight6msb(input ck, input res, input up, input ilower, output out);
  reg out;

  always @(posedge ck) begin
    if (res)
      out <= 0;
    else begin
      if (up)
        out <= ilower;
      else
        out <= 0;
    end
  end
endmodule

module knight6dir(input ck, input res, input imsb, input ilsb, output up);
  reg up;

  always @(posedge ck) begin
    if (res)
      up <= 1;
    else begin
      if (up==1 && imsb==1)
        up <= 0;
      else if (up==0 && ilsb==1)
        up <= 1;
    end
  end
endmodule

module knight6(input ck, input res, output [7:0] out, output up);
//  reg ck, res;
  wire [7:0] out;
  wire up;
  knight6msb msb( ck, res, up,         out[6], out[7]);
  knight6mid bit6(ck, res, up, out[7], out[5], out[6]);
  knight6mid bit5(ck, res, up, out[6], out[4], out[5]);
  knight6mid bit4(ck, res, up, out[5], out[3], out[4]);
  knight6mid bit3(ck, res, up, out[4], out[2], out[3]);
  knight6mid bit2(ck, res, up, out[3], out[1], out[2]);
  knight6mid bit1(ck, res, up, out[2], out[0], out[1]);
  knight6lsb lsb( ck, res, up, out[1],         out[0]);
  knight6dir dir( ck, res, out[6], out[1], up); // lookahead
endmodule

