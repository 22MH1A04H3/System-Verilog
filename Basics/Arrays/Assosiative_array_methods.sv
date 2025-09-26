module tb;
  int arr[*];
  int index;
  initial
    begin
      repeat(8)
        begin
          arr[index]=index**2;
          index=index+1;
          
        end
      $display("the array is = %0p",arr);
      arr.first(index);
      $display("the first index in arr[%0d]==%0d",index,arr[index]);
         arr.next(index);
      $display("the next index in arr[%0d]==%0d",index,arr[index]);
      arr.last(index);
      $display("teh last index in arr[%0d]==%0d",index,arr[index]);
      arr.delete(5);
       $display("the array is = %0p",arr);
      if(arr.exists(7))
        $display("The 7 index is existed in the array");
      else
        $display("The 7 index is not existed in the array");
       arr.prev(index);
      $display("the prevoius index in arr[%0d]==%0d",index,arr[index]);
   
    end
endmodule
