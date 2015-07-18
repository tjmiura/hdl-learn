module ct2bittest;

reg tck, tres;
wire [1:0] tout;

ct2bit ct2(tck, tres, tout);

initial begin
  $dumpfile("ct2bittest.vcd");
  $dumpvars(0, ct2bittest);
  $monitor ("%t: tck = %b, tres = %b, out = %b", $time, tck, tres, tout);

              tck=0; tres=0;
  #10      tck=0; tres=0;
  #10      tck=1; tres=1;
  #10	tck=0; tres=1;
  #10	tck=1; tres=1;
  #10	tck=0; tres=1;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	$finish;
end

endmodule
