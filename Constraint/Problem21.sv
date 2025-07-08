//assending and desending order using  COnstraints 
class num;
  rand int a[];
  rand int b[];
  
  constraint size{a.size==10;b.size==10;}
  constraint range{foreach(a[i])
    a[i]inside{[1:100]};
                   foreach(b[i])
                     b[i]inside{[1:100]};}
  constraint assending{foreach(a[i])
    if(i>0)
      a[i]>a[i-1];}
  constraint desending{foreach(b[i])
    if(i>0)
      b[i]<b[i-1];}
endclass
module das;
  initial
    begin
     num n;
      n=new();
      n.randomize();
      $display("ASSENDING : %0p",n.a);
      $display("DESENDING : %0p",n.b);
    end
endmodule
__________________________________________
 
[2025-07-08 13:55:15 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function n.randomize result is ignored." "testbench.sv" 23  20
MESSAGE "Unit top modules: das."
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
# Allocation: Simulator allocated 4790 kB (elbread=459 elab2=4183 kernel=147 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: ASSENDING : 31 41 43 46 47 54 61 82 85 90
# KERNEL: DESENDING : 95 92 89 85 78 66 64 37 28 7
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
