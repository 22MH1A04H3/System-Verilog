module str_array;
  int arr[string];
  initial
    begin
      arr["red"]=10;
      arr["yellow"]=20;
      arr["green"]=50;
      
      $display("the array is %0p",arr);
    end
endmodule
