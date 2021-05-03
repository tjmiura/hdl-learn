module knight6testp1;

reg tck, tres, tup, tiup, tilow;

knight6mid k6m(tck, tres, tup, tiup, tilow, tout);

initial begin
  $dumpfile("knight6testp1.vdc");
  $dumpvars(0, knight6testp1);
  $monitor("%t: ck=%b r=%b up=%b iu=%b il=%b out=%b",
			$time, tck, tres, tup, tiup, tilow, tout);
		tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=1; tup=1; tiup=0; tilow=0;
  #10	tck=1; tres=1; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=1; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=1; tilow=0;
  #10	tck=1; tres=0; tup=1; tiup=1; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=1; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=1;
  #10	tck=1; tres=0; tup=1; tiup=0; tilow=1;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=1;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=1; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=1; tilow=0;
  #10	tck=1; tres=0; tup=0; tiup=1; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=1; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=1;
  #10	tck=1; tres=0; tup=0; tiup=0; tilow=1;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=1;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=1; tres=0; tup=0; tiup=0; tilow=0;
  #10	tck=0; tres=0; tup=0; tiup=0; tilow=0;
  #10	$finish;
end

endmodule
