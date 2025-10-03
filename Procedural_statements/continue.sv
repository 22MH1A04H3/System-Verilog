module break_;
  int a;
  initial
    begin
      for(int i=0;i<10;i++)
        begin
          $display("the value of a = %0d",a);
          a++;
          if(a==5)
            begin
              $display("continueeeeeeeee................. ");
          continue;
              $display("continue is working ");//break statements
            end
          
        end
     
    end
endmodule


===============================================================
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: the value of a = 0
# KERNEL: the value of a = 1
# KERNEL: the value of a = 2
# KERNEL: the value of a = 3
# KERNEL: the value of a = 4
# KERNEL: continueeeeeeeee................. 
# KERNEL: the value of a = 5
# KERNEL: the value of a = 6
# KERNEL: the value of a = 7
# KERNEL: the value of a = 8
# KERNEL: the value of a = 9
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
