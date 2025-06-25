//constraint to generate assending and desesnding sequance 
//with a variable sixe is 15
class das;
  rand int a[];
  rand int b[];
  
  constraint size{a.size()==15;
                  b.size()==15;}
  constraint range{foreach(a[i])
    a[i]inside{[1:50]};
                   foreach(b[i])
                     b[i]inside{[1:50]};}
  constraint assending{foreach(a[i])
    if(i>0)
    a[i] < a[i-1];
                       foreach(b[i])
                         if(i>0)
                         b[i] > b[i-1];}
endclass

das d;
module tb;
  initial
    begin
      d=new();
      assert(d.randomize());
      $display("the assending = %0p",d.a);
      $display("the dessending = %0p",d.b);
            

    end
endmodule
_________________________________________________________
[2025-06-25 18:19:55 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
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
# Allocation: Simulator allocated 4787 kB (elbread=459 elab2=4181 kernel=146 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: the assending = 44 37 36 35 34 28 21 17 16 14 10 7 6 3 2
# KERNEL: the dessending = 4 5 9 12 13 14 15 25 36 44 45 46 47 48 50
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
