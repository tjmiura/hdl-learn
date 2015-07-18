// knight flasher
// shift register, direction lookahead
module knight4(input ck, input res, output [7:0] out);
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
      if (up)
        if (out[7]) begin
          out <= out >> 1;
          up <= 0;
        end else begin
          out <= out << 1;
          up <= 1;
        end
      else
        if (out[0]) begin
          out <= out << 1;
          up <= 1;
        end else begin
          out <= out >> 1;
          up <= 0;
        end
    end
  end

endmodule
