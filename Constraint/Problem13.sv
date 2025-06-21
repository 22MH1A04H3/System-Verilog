class packet;
  rand int da[];
  constraint sizze{da.size==15;}
  constraint range{foreach(da[i])
    if(i%3==2)
      da[i]==i/3+1;
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

-----------------------------------------------------
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
# Allocation: Simulator allocated 4771 kB (elbread=459 elab2=4165 kernel=145 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The randomized vales are = 0 0 1 0 0 2 0 0 3 0 0 4 0 0 5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
