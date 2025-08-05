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
      wait fork;
      $display("The fork join is finished at %0t",$time());
      #10;
      $finish();
      
    end
endmodule


        ----------------------------------------------------------
        # KERNEL: task 1 started at = 0
# KERNEL: task 2 started at = 0
# KERNEL: task 3 started at = 0
# KERNEL: task 1 is finished at = 10
# KERNEL: task 2 is finished at = 20
# KERNEL: task 3 is finished at = 30
# KERNEL: The fork join is finished at 30
# RUNTIME: Info: RUNTIME_0068 testbench.sv (30): $finish called.
# KERNEL: Time: 40 ns,  Iteration: 0,  Instan
