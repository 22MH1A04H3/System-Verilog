Problem Statement:

Create a SystemVerilog class to generate a dynamic array da of 10 integers such that:

The size of the array is 10

All even-indexed elements (i = 0, 2, 4, ...) are 1

All odd-indexed elements (i = 1, 3, 5, ...) are 0

Then, write a testbench to:

Create and randomize the object

Print the values of da
  ------------------------------------------------------
  class packet;
  rand int da[];
  
  constraint range{da.size()==10;}
  constraint data{foreach(da[i])
    if(i%2 == 0)
      da[i] == 1;
    else
      da[i] == 0;}
endclass

module tb;
  initial
    begin
      packet p;
      p=new();
      p.randomize();
      $display("The randomize values = %0p",p.da);
    end
endmodule
  ----------------------------------------------------------
  # KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4768 kB (elbread=459 elab2=4163 kernel=145 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The randomize values = 1 0 1 0 1 0 1 0 1 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
