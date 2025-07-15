//Randomize a dice value from 1 to 6.
class packet;
  rand int dice;
  
  constraint range{dice inside{[1:6]};}
  
  
endclass
packet p;
module tb;
  initial
    begin
      p=new();
      repeat(10)
        begin
      p.randomize();
      $display("The random dice value is =%0d",p.dice);
        end
    end
endmodule

________________________________________________
[2025-07-15 08:50:43 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
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
# Allocation: Simulator allocated 4744 kB (elbread=455 elab2=4147 kernel=142 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The random dice value is =1
# KERNEL: The random dice value is =1
# KERNEL: The random dice value is =2
# KERNEL: The random dice value is =3
# KERNEL: The random dice value is =1
# KERNEL: The random dice value is =5
# KERNEL: The random dice value is =2
# KERNEL: The random dice value is =1
# KERNEL: The random dice value is =2
# KERNEL: The random dice value is =6
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
