// constraint with the range 9 to 25 and even numbers 
//the storage elements are dyanamic array ,static array and que with size 15
class das;
  rand int da[];
  rand int fa[15];
  rand int que[$];
  
  constraint size{da.size()==15;
                  que.size()==15;}
  
  constraint range1{foreach(da[i])
    da[i] inside{[9:25]} && da[i]%2==0;
                  }
  constraint range2{foreach(fa[i])
    fa[i] inside{[9:25]} && fa[i]%2==0;
                  }
  constraint range3{foreach(que[i])
    que[i] inside{[9:25]} && que[i]%2==0;
                  }
  
endclass

das d;
module tb;
  initial
    begin
      d=new();
      d.randomize();
      $display("The randomized Dynamic array is =%0p",d.da);
      $display("The randomized Fixed array  is =%0p",d.fa);

      $display("The randomized Queue is =%0p",d.que);

    end
endmodule
