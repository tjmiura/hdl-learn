// knight flasher
// bit slice
module knight5bit(input ck, input res, input up, input iupper, input ilower, output out);
  reg out;

  always @(posedge ck or posedge res or posedge up or
	   posedge iupper or posedge ilower) begin
    if (res)
      out <= 0;
    else begin
      if (up) then
        out <= ilower;
      else
        out <= iupper;
    end
  end
endmodule;

module knight5msb(input ck, input res, input up, input ilower, output out);
  reg out;

  always @(posedge ck or posedge res or posedge up or
	   posedge ilower) begin
    if (res)
      out <= 0;
    else begin
      if (up) then
        out <= ilower;
      else
        out <= iupper;
    end
  end
endmodule;

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
      if (!up) then begin
        out <= iupper;
      end
    end
  end
endmodule;

module knight5(input ck, input res, output [7:0] out);
//  reg ck, res;
  reg [7:0] out;
  reg up;

  always @(posedge ck or posedge res) begin
    if (res) begin
      up <= 1;
      out <= 8'b00000001;
    end else begin
      // up o0 o7 shift
     //   0   0   x down
     //   0   1   x up
     //   1   x   0 up
     //   1   x   1 down
  end

endmodule
