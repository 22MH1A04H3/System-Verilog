4. Ensure FIFO never underflows (read without empty).

//4. Ensure FIFO never underflows (read without empty).
/* FIFO Never under_flows means read operation is not performed when fifo is empty we can only perfom the read operation when the fifo is !empty or empty =0*/
module tb;
  bit clk,read,empty;
  //clock generation
  always #5 clk=~clk;
  
  initial
    begin
      for(int i=0;i<10;i++)
        begin
      @(posedge clk);
      
      read=$random;
      empty=$random;
      $display("read = %0d empty = %0d at %0t",read,empty,$time);
        end
      #10;
      $finish();
    end
  
  property p;
    @(posedge clk)read |-> !empty;
  endproperty
  assert property (p);
    
endmodule

    __________________________________________________________
[2025-07-12 04:35:44 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "ASRT_7002: Due to optimizations some assertions from source code will be evaluated in non LRM complaint mode. Use switch -ao_off to turn off this optimization."
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
# SLP: 1 (25.00%) signals in SLP and 3 (75.00%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4668 kB (elbread=427 elab2=4106 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: read = 0 empty = 1 at 5
# KERNEL: read = 1 empty = 1 at 15
# KERNEL: read = 1 empty = 1 at 25
# ASSERT: Error: ASRT_0005 testbench.sv(25): Assertion FAILED at time: 25ns, scope: tb, start-time: 25ns
# KERNEL: read = 1 empty = 0 at 35
# KERNEL: read = 1 empty = 1 at 45
# KERNEL: read = 0 empty = 1 at 55
# ASSERT: Error: ASRT_0005 testbench.sv(25): Assertion FAILED at time: 55ns, scope: tb, start-time: 55ns
# KERNEL: read = 1 empty = 0 at 65
# KERNEL: read = 1 empty = 0 at 75
# KERNEL: read = 1 empty = 0 at 85
# KERNEL: read = 1 empty = 1 at 95
# RUNTIME: Info: RUNTIME_0068 testbench.sv (19): $finish called.
# KERNEL: Time: 105 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#8_1@.
# KERNEL: stopped at time: 105 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
