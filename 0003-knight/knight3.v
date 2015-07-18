// knight flasher
// shift register
module knight3(input ck, input res, output [7:0] out);
//  reg ck, res;
  reg [7:0] out;
  reg up;

  always @(posedge ck or posedge res) begin
    if (res) begin
      up <= 1;
      out <= 8'b00000001;
    end else begin
      if (!up && out[1])
        up <= 1;
      else if (up && out[6])
        up <= 0;
      if (up)
        out <= out << 1;
      else
        out <= out >> 1;
    end
  end

endmodule
