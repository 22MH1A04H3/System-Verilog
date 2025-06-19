Problem Statement:

Write a SystemVerilog constraint class constraint_11 to generate a dynamic array da of size 10, where the elements at even indices are odd numbers and elements at odd indices are even numbers. Use randomization to generate the array and print the values for 5 iterations. Implement the test module to validate the constraint logic.
  ______________________________________________________________________________
  class packet;

 rand int da[];
constraint sizee{da.size()==10;}
constraint range{foreach(da[i])
if(i%2==0)
da[i]%2==1;
else if(i%2==1)
da[i]%2==0;}
endclass

packet p;
module tb;
initial
begin
p=new();
repeat(5)
begin
p.randomize();
  $display("The Randoomized values are =%0p",p.da);
end
end
endmodule 
  _______________________________________
  [2025-06-19 03:27:34 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function UnitScopePackage_1::p.randomize result is ignored." "testbench.sv" 19  14
MESSAGE "Unit top modules: tb."
SUCCESS "Compile success 0 Errors 1 Warnings  Analysis time: 0[s]."
done
# Aldec, Inc. Riviera-PRO version 2023.04.112.8911 built for Linux64 on May 12, 2023.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2023 Aldec, Inc. All rights reserved.
# ELBREAD: Elaboration process.
# ELBREAD: Elaboration time 0.0 [s].
# KERNEL: Main thread initiated.
# KERNEL: Kernel process initialization phase.
# ELAB2: Elaboration final pass...
# ELAB2: Create instances ...
# KERNEL: Time resolution set to 1ns.
# ELAB2: Create instances complete.
# SLP: Started
# SLP: Elaboration phase ...
# SLP: Elaboration phase ... skipped, nothing to simulate in SLP mode : 0.0 [s]
# SLP: Finished : 0.0 [s]
# ELAB2: Elaboration final pass complete - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4769 kB (elbread=459 elab2=4164 kernel=145 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The Randoomized values are =1658581831 1328790306 973086175 -191759956 1368403801 1972537734 1848817419 -114529094 578729597 1153955980
# KERNEL: The Randoomized values are =173881849 -698647144 2030534091 -449843562 1486038289 -814955662 1450303767 -629506850 263157635 -972131448
# KERNEL: The Randoomized values are =907119855 -255118322 1268235587 -666790144 1848467833 -229326124 1375368413 -1572243918 727688003 2102102394
# KERNEL: The Randoomized values are =1483238507 582246534 478490679 -1957739004 1632847997 -1680561754 560616129 -1377433876 2111263561 -1164748066
# KERNEL: The Randoomized values are =1963012439 -244617896 882996391 -33338704 1459608701 -965235886 950093405 1459302256 1828281227 -641417924
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
