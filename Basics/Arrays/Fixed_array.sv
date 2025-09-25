module arrays;
  int arr[5];
  int arr1[7:0];
  int arr2[2:0][3:0];
  
  initial
    begin
      arr='{2,3,4,5,6};
      arr1='{2,3,4,5,6,7,8,0};
      arr2='{'{2,4,6,8},'{1,2,3,4},'{5,6,7,8}};;
      foreach(arr[i])
        begin
          $display("arr[%0d]==%0d",arr[i],i);
        end
      $display("+++++++++++++++++++++++++++++++++++++");
      foreach(arr1[i])
        begin
          $display("arr[%0d]==%0d",arr[i],i);
        end
        $display("+++++++++++++++++++++++++++++++++++++");
      foreach(arr2[i])
        begin
          $display("arr[%0d]==%0d",arr[i],i);
        end
    end
endmodule
