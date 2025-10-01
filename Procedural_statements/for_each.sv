module for_loop;
  int arr[10];
  initial
    begin
      foreach(arr[i])
        begin
          arr[i]=i**2;
          
        end
      $display("Displayed output = %0p",arr);
    end
endmodule


-----------------------------------------------------------
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Displayed output = 0 1 4 9 16 25 36 49 64 81
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
