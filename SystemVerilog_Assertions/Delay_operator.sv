//## Delay operator
module tb;
  bit a,b,clk;
  always #5 clk = ~clk;
  initial
    begin
      for(int i=0;i<10;i++)
        begin
          a=$random;
          b=$random;
          $display("a== %0d and b==%0d at time ==%0t",a,b,$time);
          @(posedge clk);
          
        end
      #10;
      $finish();
      
    end
  sequence s_1;
    @(posedge clk)a ##2 b;
  endsequence
  property p;
    s_1;
    
  endproperty
  assert property(p);
endmodule


    ________________________________________________
    [2025-07-10 13:14:36 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
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
# SLP: 1 (16.67%) signals in SLP and 3 (50.00%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4669 kB (elbread=427 elab2=4107 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a== 0 and b==1 at time ==0
# KERNEL: a== 1 and b==1 at time ==5
# ASSERT: Error: ASRT_0005 testbench.sv(26): Assertion FAILED at time: 5ns, scope: tb, start-time: 5ns
# KERNEL: a== 1 and b==1 at time ==15
# KERNEL: a== 1 and b==0 at time ==25
# KERNEL: a== 1 and b==1 at time ==35
# ASSERT: Error: ASRT_0005 testbench.sv(26): Assertion FAILED at time: 35ns, scope: tb, start-time: 15ns
# KERNEL: a== 0 and b==1 at time ==45
# KERNEL: a== 1 and b==0 at time ==55
# ASSERT: Error: ASRT_0005 testbench.sv(26): Assertion FAILED at time: 55ns, scope: tb, start-time: 55ns
# KERNEL: a== 1 and b==0 at time ==65
# ASSERT: Error: ASRT_0005 testbench.sv(26): Assertion FAILED at time: 65ns, scope: tb, start-time: 45ns
# KERNEL: a== 1 and b==0 at time ==75
# KERNEL: a== 1 and b==1 at time ==85
# ASSERT: Error: ASRT_0005 testbench.sv(26): Assertion FAILED at time: 85ns, scope: tb, start-time: 65ns
# RUNTIME: Info: RUNTIME_0068 testbench.sv (16): $finish called.
# KERNEL: Time: 105 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#5_1@.
# KERNEL: stopped at time: 105 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
