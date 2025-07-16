class packet;
 
  //Randomize dimensions of a square (side 5–20), constrain area > 100.

  rand int a;
  constraint range{a inside{[5:20]};
                  a*a >100;}
 
  
endclass
packet p;
module tb;
  initial
    begin
     // packet p;
      p=new();
      repeat(5)
        begin
          assert(p.randomize());
          $display("%0d",p.a);
        end
    end
endmodule
