//Immediate Assertion
module sva;
  bit clk,a,b;
  //clock generation
  always #5 clk=~clk;
  
  initial
    begin
      a=1;b=1;
      #10;
      b=0;
      #5;
      a=0;
      b=1;
      #5;
      a=1;
     #10;
      $finish();
      
    end
  always@(posedge clk) assert(a&&b);
endmodule

________________________________________________________________________________
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4667 kB (elbread=427 elab2=4105 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# ASSERT: Error: ASRT_0301 testbench.sv(20): Immediate assert condition (a&&b) FAILED at time: 15ns, scope: sva
# RUNTIME: Info: RUNTIME_0068 testbench.sv (17): $finish called.
# KERNEL: Time: 30 ns,  Iteration: 0,  Instance: /sva,  Process: @INITIAL#6_1@.
# KERNEL: stopped at time: 30 ns
