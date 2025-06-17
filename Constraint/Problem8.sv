Program Summary:

This SystemVerilog program generates a dynamic array da of size 15 using a class constraint_9. The values in the array follow a custom pattern based on an extended Fibonacci-like series:

da[0] and da[1] are set to 0.

da[2] is set to 1.

From da[3] to da[14], each element is the sum of the previous three elements:
da[i] = da[i-3] + da[i-2] + da[i-1]
__________________________________________________________
class constraint_8;
  rand int da[];
  
  
  constraint size{da.size==15;}
  constraint range{foreach(da[i])
    if(i<2)
      da[i]==0;
                   else if(i==2)
                     da[i]==1;
                  else
                    da[i]==da[i-1]+da[i-2]+da[i-3];}
endclass
constraint_8 c;
module tb;
  initial
    begin
      c=new();
      c.randomize();
      $display("The randomize values are = %0p",c.da);
    end
endmodule
_________________________________________________
[2025-06-17 12:31:32 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function UnitScopePackage_1::c.randomize result is ignored." "testbench.sv" 19  20
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
# Allocation: Simulator allocated 4776 kB (elbread=459 elab2=4171 kernel=146 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The randomize values are = 0 0 1 1 2 4 7 13 24 44 81 149 274 504 927
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
