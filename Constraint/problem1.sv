Problem Statement:

Write a SystemVerilog class with constraints to generate random 5-bit values of a such that:

a is odd (i.e., a % 2 == 1)

a lies in the range 10 to 30 (inclusive)

Create a testbench that:

Generates and prints 5 random values of a using the class

Ensures all values satisfy the above constraints
  -------------------------------------------------
  class packet;
  rand bit[4:0]a;
   
  
  //constraint for odd num 
  constraint a_value{a%2==1;}
  //a in the range of 20 to 30 
  constraint a_range{a inside{[20:30]};}
endclass
module tb;
 initial
   begin
     packet p;
     p=new();
     repeat(5)
       begin
         p.randomize();
         $display("The random value with valid constraint  is =%0d",p.a);
       end
     
   end
endmodule


------------------------------------------------------------
  2025-06-10 05:28:33 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function p.randomize result is ignored." "testbench.sv" 17  23
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
# Allocation: Simulator allocated 4750 kB (elbread=455 elab2=4151 kernel=144 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The random value with valid constraint  is =27
# KERNEL: The random value with valid constraint  is =27
# KERNEL: The random value with valid constraint  is =21
# KERNEL: The random value with valid constraint  is =23
# KERNEL: The random value with valid constraint  is =21
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
