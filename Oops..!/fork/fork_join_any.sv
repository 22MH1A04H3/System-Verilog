//fork join
module tb;
  
  task one();
    $display("task 1 started at = %0t",$time());
    #10;
    $display("task 1 is finished at = %0t",$time());
  endtask
   task two();
     $display("task 2 started at = %0t",$time());
    #20;
     $display("task 2 is finished at = %0t",$time());
  endtask
   task three();
     $display("task 3 started at = %0t",$time());
    #30;
     $display("task 3 is finished at = %0t",$time());
  endtask
  
  initial
    begin
      fork
      one();
      two();
      three();
      join_any
      $display("The fork join is finished at %0t",$time());
      #10;
      $finish();
      
    end
endmodule




------------------------------------------------------

# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4671 kB (elbread=427 elab2=4110 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: task 1 started at = 0
# KERNEL: task 2 started at = 0
# KERNEL: task 3 started at = 0
# KERNEL: task 1 is finished at = 10
# KERNEL: The fork join is finished at 10
# KERNEL: task 2 is finished at = 20
# RUNTIME: Info: RUNTIME_0068 testbench.sv (29): $finish called.
# KERNEL: Time: 20 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#20_3@.
# KERNEL: stopped at time: 20 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
