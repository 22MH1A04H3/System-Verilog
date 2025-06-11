Problem Statement:

Write a SystemVerilog class that:

Declares a dynamic array da of type int

Constrains the array to have 10 elements

Applies the following rules:

For indices i < 5:
da[i] = da.size - (i + (i + 1))

For indices i ≥ 5:
da[i] = 18 - (i * 2)

Then, create a testbench to:

Create and randomize the object

Display the array contents
  -------------------------------------
  //constraint3
class packet;
  rand int da[];
  
  constraint range{da.size()==10;}
  constraint da_range{foreach(da[i])
    if(i<5)
      da[i]== da.size-(i+(i+1));
    else
      da[i]== 18-(i*2);}  //i>=5
endclass
module tb;
  initial
    begin
      packet p;
      p=new();
      p.randomize();
      $display("The randomized constraint is =%0p",p.da);
    end
endmodule
  ------------------
  [2025-06-11 05:25:16 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function p.randomize result is ignored." "testbench.sv" 17  20
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
# Allocation: Simulator allocated 4773 kB (elbread=459 elab2=4168 kernel=145 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The randomized constraint is =18 16 14 12 10 8 6 4 2 0
# KERNEL: Simulation has finished. There are no more test ve
