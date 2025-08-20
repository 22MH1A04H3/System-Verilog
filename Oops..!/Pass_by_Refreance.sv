//swap using call by referance(original values are updated)
module tb;
  task automatic swap(ref bit[3:0]a,b);//ref keyword is for referance 
    bit[3:0]t;                  //if there is no automatic we will get non-automatic error
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
