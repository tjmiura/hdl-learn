module ct2bit ( ck, res, q );

  input ck, res;
  output [1:0] q;

  reg [1:0] q;

  always @(posedge ck or posedge res)
   begin
    if (res)
     q <= 0;    // ここを，q <= 2'b00; としても OK
    else
     q <= q + 1;  // ここを，q <= q + 2'b01; としても OK
   end

endmodule
