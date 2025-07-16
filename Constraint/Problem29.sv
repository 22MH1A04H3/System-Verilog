class packet;
 
  //Create a vector of 10 IDs with all unique values.
  rand int v[10];
  constraint range{foreach(v[i]) v[i]inside{[0:9]};
                   unique{v};}
 
  
endclass
packet p;
module tb;
  initial
    begin
     // packet p;
      p=new();
      repeat(10)// 2 members
        begin
          assert(p.randomize());
          $display("%0p",p.v);
        end
    end
endmodule




======================================================
[2025-07-16 17:13:42 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
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
# Allocation: Simulator allocated 4749 kB (elbread=455 elab2=4151 kernel=142 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 9 2 5 3 4 8 1 0 7 6
# KERNEL: 0 1 5 7 8 9 4 6 3 2
# KERNEL: 0 7 9 4 1 8 2 5 3 6
# KERNEL: 8 0 6 4 2 3 5 7 1 9
# KERNEL: 7 2 6 4 3 9 5 1 8 0
# KERNEL: 4 3 0 6 1 9 2 5 8 7
# KERNEL: 7 2 3 4 1 9 6 0 8 5
# KERNEL: 1 5 8 6 9 7 3 4 0 2
# KERNEL: 2 4 0 9 8 1 7 5 6 3
# KERNEL: 3 5 4 9 2 0 7 1 6 8
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
