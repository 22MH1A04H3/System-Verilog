module tb;
  bit clk,a;
  always #5 clk= ~clk;
  initial
    begin
      for(int i=0;i<10;i++)
        begin
          a=$random;
          $display("at %0t a=%d",$time,a);
          @(posedge clk);
          
        end
      #10;
      $finish();
    end
  sequence s_1;
    @(posedge clk) $rose(a);
  endsequence
  property p;
    s_1;
  endproperty
  assert property(p);
endmodule
    ------------------------------
    [2025-07-09 11:05:44 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
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
# SLP: Generation phase ... done : 0.1 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 2 (66.67%) other processes in SLP
# SLP: 1 (20.00%) signals in SLP and 2 (40.00%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4668 kB (elbread=427 elab2=4107 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: at 0 a=0
# KERNEL: at 5 a=1
# ASSERT: Error: ASRT_0005 testbench.sv(22): Assertion FAILED at time: 5ns, scope: tb, start-time: 5ns
# KERNEL: at 15 a=1
# KERNEL: at 25 a=1
# ASSERT: Error: ASRT_0005 testbench.sv(22): Assertion FAILED at time: 25ns, scope: tb, start-time: 25ns
# KERNEL: at 35 a=1
# ASSERT: Error: ASRT_0005 testbench.sv(22): Assertion FAILED at time: 35ns, scope: tb, start-time: 35ns
# KERNEL: at 45 a=1
# ASSERT: Error: ASRT_0005 testbench.sv(22): Assertion FAILED at time: 45ns, scope: tb, start-time: 45ns
# KERNEL: at 55 a=1
# ASSERT: Error: ASRT_0005 testbench.sv(22): Assertion FAILED at time: 55ns, scope: tb, start-time: 55ns
# KERNEL: at 65 a=0
# ASSERT: Error: ASRT_0005 testbench.sv(22): Assertion FAILED at time: 65ns, scope: tb, start-time: 65ns
# KERNEL: at 75 a=1
# ASSERT: Error: ASRT_0005 testbench.sv(22): Assertion FAILED at time: 75ns, scope: tb, start-time: 75ns
# KERNEL: at 85 a=1
# ASSERT: Error: ASRT_0005 testbench.sv(22): Assertion FAILED at time: 95ns, scope: tb, start-time: 95ns
# RUNTIME: Info: RUNTIME_0068 testbench.sv (14): $finish called.
# KERNEL: Time: 105 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#4_1@.
# KERNEL: stopped at time: 105 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
