module array;
  bit [7:0]arr[];//dynamic array declaration
  initial
    begin
      arr=new[4];
      arr='{1,2,3,4};
      foreach(arr[i])
        begin
          $display("arr[%0d]==%0d",i,arr[i]);
        end
      $display("___________________________");
      
      //allocation 10 locattions and prevois data is deleted
      /*  arr=new[10];
      foreach(arr[i])
        begin
          $display("arr[%0d]==%0d",i,arr[i]);
        end
      */
      
      arr=new[10](arr);
      //retaining the prevois values
      foreach(arr[i])
        begin
          $display("arr[%0d]==%0d",i,arr[i]);
        end
      
    end
endmodule
