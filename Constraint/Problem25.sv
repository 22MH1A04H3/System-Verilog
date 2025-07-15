//Create a vector of 8 digit one time password.
class packet;
  rand int vector[8];
  
  constraint range{foreach(vector[i])
    vector[i] inside{[0:7]};}
  
  
endclass
packet p;
module tb;
  initial
    begin
      p=new();
      repeat(10)
        begin
      p.randomize();
          $display("Your one time password is =%0p",p.vector);
        end
    end
endmodule
_____________________________________________________________________________________________________________________

[2025-07-15 09:15:52 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function UnitScopePackage_1::p.randomize result is ignored." "testbench.sv" 17  20
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
# Allocation: Simulator allocated 4746 kB (elbread=455 elab2=4148 kernel=142 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Your one time password is =3 2 1 2 7 6 5 4
# KERNEL: Your one time password is =3 4 5 5 5 6 6 2
# KERNEL: Your one time password is =4 4 0 5 3 5 0 1
# KERNEL: Your one time password is =3 7 1 4 4 6 7 5
# KERNEL: Your one time password is =7 1 0 4 2 0 6 1
# KERNEL: Your one time password is =1 2 5 4 5 3 6 3
# KERNEL: Your one time password is =4 2 6 3 6 0 6 6
# KERNEL: Your one time password is =7 4 7 3 5 4 1 3
# KERNEL: Your one time password is =0 6 1 6 0 5 5 6
# KERNEL: Your one time password is =0 7 5 4 6 3 0 7
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
