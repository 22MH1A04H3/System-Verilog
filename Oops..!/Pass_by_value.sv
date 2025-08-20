//swap using call by value(original values are remines constant)
module tb;
  task swap(input bit[3:0]a,b); //we can write is also in function with bit [3:0]swap:
    bit[3:0]t;
    t=a;
    a=b;
    b=t;
    $display("a == %0d b==%0d",a,b); 
  endtask
  bit[3:0]a,b;
  bit[3:0]t;
  initial
    begin
      a=3;
      b=7;
      swap(a,b);
      $display("a == %0d b==%0d",a,b); 
    end
    
endmodule
