//constraint with size 15 and each payload with increament of 5
class packet;
  rand int da[];
  constraint size{da.size()==15;}
  constraint range{foreach(da[i])
    if(i==0)
      da[i]==0;
                  else
                    da[i]==da[i-1]+5;}
endclass
packet p;
module tb;
  initial
    begin
      p=new();
      p.randomize();
      $display("THe random values are =%0p",p.da);
    end
endmodule
______________________________________________
[2025-06-23 17:56:10 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function UnitScopePackage_1::p.randomize result is ignored." "testbench.sv" 16  20
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
# Allocation: Simulator allocated 4771 kB (elbread=459 elab2=4166 kernel=145 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: THe random values are =0 5 10 15 20 25 30 35 40 45 50 55 60 65 70
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
