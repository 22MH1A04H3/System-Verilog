class packet;
 
  //Randomize a deck of 52 cards ensuring uniqueness
  rand bit[5:0]card[52];
  
  
  
  constraint range{unique{card};
                   foreach(card[i]) card[i]<52;}
  
endclass
packet p;
module tb;
  initial
    begin
     // packet p;
      p=new();
      repeat(2)
        begin
          assert(p.randomize());
          $display("%0p",p.card);
        end
    end
endmodule



===============================================================================================
[2025-07-16 16:55:51 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
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
# KERNEL: 19 24 21 9 36 3 33 29 50 4 14 11 13 28 20 40 8 15 47 30 1 6 27 43 41 35 37 10 16 5 44 26 34 32 31 7 42 38 39 45 46 12 49 18 17 48 22 25 51 2 0 23
# KERNEL: 18 51 9 11 50 28 0 13 19 6 24 37 31 29 3 36 48 4 35 17 45 26 40 12 23 2 33 21 39 42 44 8 27 16 46 41 7 49 34 22 30 25 47 14 10 1 15 43 20 38 32 5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
