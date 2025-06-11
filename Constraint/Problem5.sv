class packet;
  rand int da[]; //dynamic array
  
  constraint da_range{da.size==10;}
  constraint loop{foreach(da[i])
    da[i]==i%2;}
endclass
packet p;

module tb;
  initial
    begin
     
      p=new();
      assert(p.randomize());
      $display("The Randomized values = %0p",p.da);
    end
endmodule
----------------------------------------
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4769 kB (elbread=459 elab2=4164 kernel=145 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The Randomized values = 0 1 0 1 0 1 0 1 0 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
