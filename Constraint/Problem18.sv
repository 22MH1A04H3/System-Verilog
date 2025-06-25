//The constraint sequance is : 5,-10,15,-20,25,-30,35...
class packet;                //0,  1, 2, 3, 4,  5,  6
  rand int da[];
  
  constraint sizee{da.size()==15;}
  constraint range{foreach(da[i])
                  if(i%2==0)
                    da[i]==5*(i+1);
                  else
                    da[i]==-5*(i+1);}
endclass
packet p;
module tb;
  initial
    begin
      p=new();
      p.randomize();
      $display("The Random Values are =%0p",p.da);
    end
endmodule

________________________________________

[2025-06-25 17:33:11 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function UnitScopePackage_1::d.randomize result is ignored." "testbench.sv" 28  20
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
# Allocation: Simulator allocated 4799 kB (elbread=459 elab2=4191 kernel=148 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The randomized Dynamic array is =18 18 12 24 22 24 12 20 22 14 24 20 16 16 22
# KERNEL: The randomized Fixed array  is =12 16 10 24 22 22 16 16 16 10 16 24 24 22 24
# KERNEL: The randomized Queue is =16 14 16 22 12 12 12 22 12 22 22 10 14 24 24
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
