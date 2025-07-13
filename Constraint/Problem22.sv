. Generate a 3D vector [3][3][3] with values between -10 and 10.


//3d constraint

class packet;
  rand int v[3][3][3];
  constraint range{foreach(v[i,j,k])
                  
    v[i][j][k] inside{[-10:10]};}
endclass

packet p;
module tb;
  initial
    begin
      p=new();
      assert(p.randomize());
      $display("%0p",p.v);
    end
endmodule


___________________________________________________
[2025-07-13 12:33:10 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
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
# Allocation: Simulator allocated 4748 kB (elbread=455 elab2=4150 kernel=142 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: {{-7 -4 -4} {10 7 1} {3 -1 10}} {{0 -10 -1} {6 9 4} {0 1 0}} {{5 8 -10} {1 -10 -7} {3 -1 -6}}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
