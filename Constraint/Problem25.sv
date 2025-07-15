//Create a vector of 8 digit one time password.
class packet;
  rand int vector[8];
  
  constraint range{foreach(vector[i])
    vector[i] inside{[0:7]};}
  
  
endclass
packet p;
module tb;
  initial
    begin
      p=new();
      repeat(10)
        begin
      p.randomize();
          $display("Your one time password is =%0p",p.vector);
        end
    end
endmodule
