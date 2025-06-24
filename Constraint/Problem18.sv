//The constraint sequance is : 5,-10,15,-20,25,-30,35...
class packet;                //0,  1, 2, 3, 4,  5,  6
  rand int da[];
  
  constraint sizee{da.size()==15;}
  constraint range{foreach(da[i])
                  if(i%2==0)
                    da[i]==5*(i+1);
                  else
                    da[i]==-5*(i+1);}
endclass
packet p;
module tb;
  initial
    begin
      p=new();
      p.randomize();
      $display("The Random Values are =%0p",p.da);
    end
endmodule
