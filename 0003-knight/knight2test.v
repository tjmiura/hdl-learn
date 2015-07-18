module knight2test;

reg tck, tres;
wire [7:0] tout;

knight2 kn1(tck, tres, tout);

initial begin
  $dumpfile("knight2test.vcd");
  $dumpvars(0, knight2test);
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
