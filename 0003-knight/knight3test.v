module knight3test;

reg tck, tres;
wire [7:0] tout;

knight3 kn1(tck, tres, tout);

initial begin
  $dumpfile("knight3test.vcd");
  $dumpvars(0, knight3test);
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
