//system_veilog_data_types
//2_state_ and_4_state_data_types
module tb;
  //2_state_data_types
  bit a;//unsigned
  byte b;//signed
  byte unsigned l;//unsigned
  int c;//signed
  shortint d;//signed
  longint e;//signed
  //4_state_data_types_which_allow_4_states
  logic f;
  reg g;
  integer h;//unsigned
  time i;
  real j;
  realtime k;
  initial
    begin
      a=$random();
      $display("a=%0b",a);
      b=$random();
      $display("b=%0b",b);
      c=$random();
      $display("c=%0b",c);
      d=$random();
      $display("d=%0b",d);
      e=$random();
      $display("e=%0b",e);
      f=$random();
      $display("f=%0b",f);
      g=$random();
      $display("g=%0b",g);
      h=$random();
      
      $display("h=%0b",h);
      #10;
     
      $display("i=%0t",$time);
      j=3.14;
      $display("j=%b",j);
     #20;
      $display("k=%0t",$realtime);
      l=$random();
      $display("l=%0b",l);
      
    end
endmodule




_________________________________________________________________
[2025-08-15 08:14:32 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	23.09-s001: Started on Aug 15, 2025 at 04:14:33 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
	Top level design units:
		tb
      $display("j=%b",j);
                      |
xmelab: *W,REALCV (./testbench.sv,41|22): Real argument converted to integer for (%b).
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
a=0
b=10000001
c=10000100100001001101011000001001
d=101011001100011
e=110101110010111101100001101
f=1
g=1
h=10001001001101110101001000010010
i=10
j=00000000000000000000000000000011
k=30
l=1
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 15, 2025 at 04:14:34 EDT  (total: 00:00:01)
Done
