class packet;
  rand int da[];
  constraint sizze{da.size==15;}
  constraint range{foreach(da[i])
    if(i%3==0)
      da[i]==1;
                  else
                    da[i]==0;}
  
endclass
module tb;
  initial
    begin
      packet p;
      p=new();
      
          p.randomize();
          $display("The randomized vales are = %0p",p.da);
        
    end
endmodule

_________________________________________________________________
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
# Allocation: Simulator allocated 4768 kB (elbread=459 elab2=4163 kernel=145 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The randomized vales are = 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
