class packet;
 
  //Model a transaction with type (deposit/withdraw) and amount (100-10,000).
  rand int transaction;
  typedef enum{deposite,withdraw}state_t;
  rand state_t trans_state;
  constraint tans{transaction inside {[100:10000]};}
 
  
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
          $display("%0p",p.transaction);
        end
    end
endmodule

========================================================

[2025-07-16 17:09:24 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
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
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4746 kB (elbread=455 elab2=4149 kernel=142 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 5809
# KERNEL: 1166
# KERNEL: 659
# KERNEL: 4555
# KERNEL: 2576
# KERNEL: 4938
# KERNEL: 9248
# KERNEL: 5680
# KERNEL: 5709
# KERNEL: 2306
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
