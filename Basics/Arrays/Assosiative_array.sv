//Assosiative array 
module a_array;
  int arr[*];
 int index;
  initial
    begin
      repeat(10)
        begin
          arr[index]=index*2;
      index=index+2;
        end
     $display("array == %0p",arr);
      
      $display("size of an array %0d",arr.num());
      arr.delete(8);
      
    $display("array == %0p",arr);
     
     
        
    end
endmodule
