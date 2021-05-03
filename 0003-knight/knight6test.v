module knight6test;

reg tck, tres;
wire [7:0] tout;
wire up;

knight6 kn1(tck, tres, tout, tup);

initial begin
  $dumpfile("knight6test.vcd");
  $dumpvars(0, knight6test);
  $monitor ("%t: tck = %b, tres = %b, out = %b up = %b",
			$time, tck, tres, tout, tup);

		tck=0; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=1;
  #10	tck=0; tres=1;
  #10	tck=1; tres=1;
  #10	tck=0; tres=1;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	tck=1; tres=0;
  #10	tck=0; tres=0;
  #10	$finish;
end

endmodule
