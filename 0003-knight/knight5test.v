module knight5test;

reg tck, tres;
wire [7:0] tout;

knight5 kn1(tck, tres, tout);

initial begin
  $dumpfile("knight5test.vcd");
  $dumpvars(0, knight5test);
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
