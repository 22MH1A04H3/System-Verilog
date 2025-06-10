roblem Statement:

Write a SystemVerilog class that:

Declares a dynamic array da of 3-bit random elements

Constrains the array to have 10 elements

Sets each element da[i] = (i + 2) / 2 for all i in the array

Then, write a testbench that:

Creates an object of the class

Randomizes the object

Displays the content of the array
  ---------------------------------------
  //problem 2
class packet;
  rand bit[2:0]da[]; // dynamic array
  constraint range{da.size()==10;
                   foreach(da[i])
                     da[i]==(i+2)/2;}//multiline constrint
  
endclass
module tb;
  initial
    begin
      packet p;
      p=new();
      p.randomize();
      $display("The randomized value is =%0p",p.da);
    end
endmodule
  -----------------------------------------------
  [2025-06-10 06:03:15 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function p.randomize result is ignored." "testbench.sv" 14  20
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
# Allocation: Simulator allocated 4763 kB (elbread=459 elab2=4160 kernel=143 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The randomized value is =1 1 2 2 3 3 4 4 5 5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
