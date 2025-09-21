module strings;
  string s1 = "Semiconductor";
  string s2 = "India";
  string s3;
  string s4 = "SEMICONDUCTOR";
  string s5 ;
  
  
  
 initial
   begin
     $display("Length of the String = %0d",s1.len());
     $display("The Upppercase of s1 is = %0s",s1.toupper());
     s3 = s1.substr(2,10);
     $display("sub string of s1 is = %0s",s3);
     $display("The lowercase of s2 is = %0s ",s2.tolower());
     $display("comparision of s1 and s4 = %0b", s1.compare(s4));
     $display("comparision of s1 and s4 = %0b", s1.icompare(s4));
     $display("Concatinationof s1 and s2 = %0s", {s1," ",s2});
     s1.putc(5,"d");
     $display("Put char method s1 = %0s",s1);
     
     $display("get char method s1 = %0c",s1.getc(2));
   end
endmodule










===================================
[2025-09-21 13:54:02 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: strings."
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
# SLP: Elaboration phase ... done : 0.0 [s]
# SLP: Generation phase ...
# SLP: Generation phase ... done : 0.1 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 1 (100.00%) other processes in SLP
# SLP: 0 signals in SLP and 4 (80.00%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4668 kB (elbread=427 elab2=4105 kernel=135 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Length of the String = 13
# KERNEL: The Upppercase of s1 is = SEMICONDUCTOR
# KERNEL: sub string of s1 is = miconduct
# KERNEL: The lowercase of s2 is = india 
# KERNEL: comparision of s1 and s4 = 1
# KERNEL: comparision of s1 and s4 = 0
# KERNEL: Concatinationof s1 and s2 = Semiconductor India
# KERNEL: Put char method s1 = Semicdnductor
# KERNEL: get char method s1 = m
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
