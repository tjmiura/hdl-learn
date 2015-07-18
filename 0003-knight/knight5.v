// knight flasher
// bit slice
module knight5bit(input ck, input res, input up, input iupper, input ilower, 
		output out, output oupper, output olower);
  reg out;
  reg oupper;
  reg olower;

  always @(posedge ck or posedge res or posedge up or
	   posedge iupper or posedge ilower) begin
    if (res) begin
      out <= 0;
      oupper <= 0;
      olower <= 0;
    end else begin
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
