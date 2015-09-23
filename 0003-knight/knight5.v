// knight flasher
// bit slice
module knight5bit(input ck, input res, input up, input iupper, input ilower, output out);
  reg out;

  always @(posedge ck or posedge res or posedge up or
	   posedge iupper or posedge ilower) begin
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

module knight5msb(input ck, input res, input up, input ilower, 
		output out, output oup);
  reg out;
  reg oup;

  always @(posedge ck or posedge res or posedge up or
	   posedge ilower) begin
    if (res) begin
      out <= 0;
      oup <= 1;
    end else begin
      oup <= 0;
      if (up) begin
        out <= ilower;
      end
    end
  end
endmodule

module knight5lsb(input ck, input res, input up, input iupper, 
		output out, output oup);
  reg out;
  reg oup;

  always @(posedge ck or posedge res or posedge up or
	   posedge iupper) begin
    if (res) begin
      out <= 1;
      oup <= 1;
    end else begin
      oup <= 0;
      if (!up) begin
        out <= iupper;
      end
    end
  end
endmodule

module knight5(input ck, input res, output [7:0] out);
//  reg ck, res;
  wire [7:0] out;
  wire upm, upl;
  reg up;
  knight5msb msb(ck, res, up, out[6], out[7], upm);
  knight5bit bit6(ck, res, up, out[7], out[5], out[6]);
  knight5bit bit5(ck, res, up, out[6], out[4], out[5]);
  knight5bit bit4(ck, res, up, out[5], out[3], out[4]);
  knight5bit bit3(ck, res, up, out[4], out[2], out[3]);
  knight5bit bit2(ck, res, up, out[3], out[1], out[2]);
  knight5bit bit1(ck, res, up, out[2], out[0], out[1]);
  knight5lsb lsb(ck, res, up, out[1], out[0], upl);

  always @(posedge ck or posedge res) begin
    if (res) begin
      up <= 1;
    end else begin
      // up o0 o7 shift
      //   0   0   x down
      //   0   1   x up
      //   1   x   0 up
      //   1   x   1 down
    end
  end

endmodule
