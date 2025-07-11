//Ensure reset is deasserted within 5 cycles of power-up


module tb;
  bit clk,power_up,reset;
  
  //clock generation
  always #5 clk = ~clk;
  
  initial
    begin
      for(int i=1;i<20;i++)
        begin
          @(posedge clk);
          power_up=$random;
          reset=$random;
          $display("power_up=%0d reset=%0d at %0t",power_up,reset,$time);
          
        end
      #10;
      $finish();
      
    end
  property p;
    //Assert that req is followed by ack within 3 cycles
    @(posedge clk)
    power_up|->##[1:5](!reset);
  endproperty
  assert property(p);
endmodule



    ________________________________________________________________
[2025-07-11 17:03:03 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
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
# SLP: Elaboration phase ... done : 0.0 [s]
# SLP: Generation phase ...
# SLP: Generation phase ... done : 0.0 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 2 (66.67%) other processes in SLP
# SLP: 1 (16.67%) signals in SLP and 3 (50.00%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4669 kB (elbread=427 elab2=4107 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: power_up=0 reset=1 at 5
# KERNEL: power_up=1 reset=1 at 15
# KERNEL: power_up=1 reset=1 at 25
# KERNEL: power_up=1 reset=0 at 35
# KERNEL: power_up=1 reset=1 at 45
# KERNEL: power_up=0 reset=1 at 55
# KERNEL: power_up=1 reset=0 at 65
# KERNEL: power_up=1 reset=0 at 75
# KERNEL: power_up=1 reset=0 at 85
# KERNEL: power_up=1 reset=1 at 95
# KERNEL: power_up=0 reset=1 at 105
# KERNEL: power_up=0 reset=0 at 115
# KERNEL: power_up=0 reset=1 at 125
# KERNEL: power_up=0 reset=1 at 135
# KERNEL: power_up=1 reset=1 at 145
# KERNEL: power_up=1 reset=0 at 155
# KERNEL: power_up=0 reset=0 at 165
# KERNEL: power_up=0 reset=1 at 175
# KERNEL: power_up=0 reset=1 at 185
# RUNTIME: Info: RUNTIME_0068 testbench.sv (21): $finish called.
# KERNEL: Time: 195 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#10_1@.
# KERNEL: stopped at time: 195 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
