Problem Statement:

Write a SystemVerilog class to generate a random array of 10 integers with the following constraints:

The size of the array must be exactly 10.

For the first 5 elements (index 0 to 4), each element should be equal to its index plus 1.

For the last 5 elements (index 5 to 9), each element should be equal to 10 minus its index.
  ______________________________________________________
  
class constraint_;
  rand int da[];
  //dyanamic array
  constraint size{da.size==10;}
  //size of the constraint 
  constraint range{foreach(da[i])
    if(i>5)
      //da[i]==i+1;
      da[i]==10-i;
    else
     // da[i]==10-i;
      da[i]==i+1;
                  }
endclass
constraint_ p;
module tb;
  initial
    begin
      p=new();
     assert(p.randomize());
       $display("the randomized value is = %0p",p.da);
     
      
    end
endmodule
  ____________________________________________________________
  Log Share
[2025-06-17 12:18:31 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: tb."
SUCCESS "Compile success 0 Errors 0 Warnings  Analysis time: 0[s]."
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
# Allocation: Simulator allocated 4772 kB (elbread=459 elab2=4166 kernel=145 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: da = 10 9 8 7 6 5 4 3 2 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
