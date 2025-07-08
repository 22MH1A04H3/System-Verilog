//Constraint to generate prime number less than 100
class num;
  int prime_num[$];
  rand int da[];
   
  constraint size{da.size==100;}
  constraint range{foreach(da[i])
    da[i]==prime_fun(i);}
  
  //function 
  function int prime_fun(input int i);
    if(i>1 && (!((i%2==0 && i!=2)||(i%3==0 && i!=3)||(i%5==0 && i!=5)||(i%7==0 && i!=7))))
           return i;
    else
      return 0;
  endfunction
  
  
  //function 
  function void appending();
   
      foreach(da[i])
        begin
           if(i!=0)
            begin
              prime_num.push_back(da[i]);
        end
      end
  endfunction
 endclass


module tb;
  initial
    begin
     num n;
      n=new();
      n.randomize();
      $display("The random is == %0p",n.da);
      
    end
endmodule

__________________________________
2025-07-08 13:24:41 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2803 "Function n.randomize result is ignored." "testbench.sv" 38  20
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
# Allocation: Simulator allocated 4782 kB (elbread=459 elab2=4174 kernel=148 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The random is == 0 0 2 3 0 5 0 7 0 0 0 11 0 13 0 0 0 17 0 19 0 0 0 23 0 0 0 0 0 29 0 31 0 0 0 0 0 37 0 0 0 41 0 43 0 0 0 47 0 0 0 0 0 53 0 0 0 0 0 59 0 61 0 0 0 0 0 67 0 0 0 71 0 73 0 0 0 0 0 79 0 0 0 83 0 0 0 0 0 89 0 0 0 0 0 0 0 97 0 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
