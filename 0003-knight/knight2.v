// knight flasher
// counter+decoder; unfilled
module knight2(input ck, input res, output [7:0] out);
//  reg ck, res;
  reg out;
  reg [3:0] ct;

  always @(posedge ck or posedge res) begin
    if (res)
      ct <= 0;
    else begin
      if (ct == 4'b1101 || ct == 4'b1110 || ct == 4'b1111)
        ct <= 0;
      else
        ct <= ct + 1;
      case (ct)
      4'b0000: out <= 8'b00000001;
      4'b0001: out <= 8'b00000010;
      4'b0010: out <= 8'b00000100;
      4'b0011: out <= 8'b00001000;
      4'b0100: out <= 8'b00010000;
      4'b0101: out <= 8'b00100000;
      4'b0110: out <= 8'b01000000;
      4'b0111: out <= 8'b10000000;
      4'b1000: out <= 8'b01000000;
      4'b1001: out <= 8'b00100000;
      4'b1010: out <= 8'b00010000;
      4'b1011: out <= 8'b00001000;
      4'b1100: out <= 8'b00000100;
      4'b1101: out <= 8'b00000010;
      endcase
    end
  end

endmodule
