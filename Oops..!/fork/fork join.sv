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
      join
      $display("The fork join is finished at %0t",$time());
      #10;
      $finish();
      
    end
endmodule
