module concurent_assertion;
  bit clk;
  bit a,b,c,d;
  //clock generation
  always #5 clk = ~clk;
  
  initial
    begin
      for(int i=0;i<20;i++)
    begin
      {a,b,c,d}=$random;
      $display("At $time= %0t a=%0d b=%0d c=%0d d=%0d ",$time,a,b,c,d);
      @(posedge clk);
    end
      #20;
      $finish();
      
    end
  sequence s_ab;
    a ##1 b;
  endsequence
  sequence s_cd;
    c ##2 d;
    
  endsequence
  
  property s_p;
    @(posedge clk)s_ab ##2 s_cd;
    
  endproperty
  assert property(s_p);
    
endmodule
    ------------------------------------------------------------------------------------------
    [2025-07-09 10:11:50 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: concurent_assertion."
SUCCESS "Compile success 0 Errors 0 Warnings  Analysis time: 1[s]."
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
# SLP: 1 (12.50%) signals in SLP and 5 (62.50%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4670 kB (elbread=427 elab2=4108 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: At $time= 0 a=0 b=1 c=0 d=0 
# KERNEL: At $time= 5 a=0 b=0 c=0 d=1 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 5ns, scope: concurent_assertion, start-time: 5ns
# KERNEL: At $time= 15 a=1 b=0 c=0 d=1 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 15ns, scope: concurent_assertion, start-time: 15ns
# KERNEL: At $time= 25 a=0 b=0 c=1 d=1 
# KERNEL: At $time= 35 a=1 b=1 c=0 d=1 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 35ns, scope: concurent_assertion, start-time: 35ns
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 35ns, scope: concurent_assertion, start-time: 25ns
# KERNEL: At $time= 45 a=1 b=1 c=0 d=1 
# KERNEL: At $time= 55 a=0 b=1 c=0 d=1 
# KERNEL: At $time= 65 a=0 b=0 c=1 d=0 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 65ns, scope: concurent_assertion, start-time: 65ns
# KERNEL: At $time= 75 a=0 b=0 c=0 d=1 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 75ns, scope: concurent_assertion, start-time: 75ns
# KERNEL: At $time= 85 a=1 b=1 c=0 d=1 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 85ns, scope: concurent_assertion, start-time: 85ns
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 85ns, scope: concurent_assertion, start-time: 55ns
# KERNEL: At $time= 95 a=0 b=1 c=1 d=0 
# KERNEL: At $time= 105 a=1 b=1 c=0 d=1 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 105ns, scope: concurent_assertion, start-time: 105ns
# KERNEL: At $time= 115 a=1 b=1 c=0 d=1 
# KERNEL: At $time= 125 a=1 b=1 c=0 d=0 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 125ns, scope: concurent_assertion, start-time: 95ns
# KERNEL: At $time= 135 a=1 b=0 c=0 d=1 
# KERNEL: At $time= 145 a=0 b=1 c=1 d=0 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 145ns, scope: concurent_assertion, start-time: 135ns
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 145ns, scope: concurent_assertion, start-time: 115ns
# KERNEL: At $time= 155 a=0 b=1 c=0 d=1 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 155ns, scope: concurent_assertion, start-time: 155ns
# KERNEL: At $time= 165 a=1 b=0 c=1 d=0 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 165ns, scope: concurent_assertion, start-time: 165ns
# KERNEL: At $time= 175 a=0 b=1 c=0 d=1 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 175ns, scope: concurent_assertion, start-time: 125ns
# KERNEL: At $time= 185 a=0 b=1 c=1 d=1 
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 185ns, scope: concurent_assertion, start-time: 185ns
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 195ns, scope: concurent_assertion, start-time: 195ns
# ASSERT: Error: ASRT_0005 testbench.sv(31): Assertion FAILED at time: 205ns, scope: concurent_assertion, start-time: 205ns
# RUNTIME: Info: RUNTIME_0068 testbench.sv (16): $finish called.
# KERNEL: Time: 215 ns,  Iteration: 0,  Instance: /concurent_assertion,  Process: @INITIAL#7_1@.
# KERNEL: stopped at time: 215 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
