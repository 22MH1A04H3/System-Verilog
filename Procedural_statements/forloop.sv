module for_loop;
  int arr[10];
  int arr1[10][10];
  
  initial
    begin
      for(int i=0;i<10;i++)
        begin
          arr[i]=i*10;
          for(int j=0;j<10;j++)
            begin
              arr1[i][j]=i*j;
            end
        end
      $display("the data in arr = %0p",arr);
      $display("the data in ar1r = %0p",arr1);
    end
endmodule
