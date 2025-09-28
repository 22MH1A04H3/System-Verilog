//blockingvs non-blocking statements in sv
module statement;
  int a;
 int b;
  
  
  initial
  begin
    
    a=10;
    b=20;
    
    //prints normal value
    $display("the value of a =%0d",a);
    $display("the value of b =%0d",b);
    $display("______________________________________");
    a=b;
    b=30;
    //blocking statement
    $display("the value of a =%0d",a);
    $display("the value of b =%0d",b);
    $display("______________________________________");
    
    //non blocking 
    a<=b;
    b<=30;
    
  end
    
    final 
    begin
      
    
    $display("the value of a =%0d",a);
    $display("the value of b =%0d",b);
    $display("______________________________________");
    end
    
   
    
   

endmodule




===========================================================================
 KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: the value of a =10
# KERNEL: the value of b =20
# KERNEL: ______________________________________
# KERNEL: the value of a =20
# KERNEL: the value of b =30
# KERNEL: ______________________________________
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# KERNEL: the value of a =30
# KERNEL: the value of b =30
# KERNEL: ______________________________________
# VSIM: Simulation has finished.




=
