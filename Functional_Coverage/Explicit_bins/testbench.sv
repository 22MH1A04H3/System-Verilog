//buffer verification
module tb;
  logic [3:0]in,out;
  
//dut instantiation
  buffer dut(.in(in),.out(out));
  
  covergroup c_g @(in,out);
    cp1:coverpoint in;//hits all values form 0 to 15
    cp2:coverpoint out { bins b1 = {1,4,9};
                     bins b2 = {[10:13]};
    }
  endgroup
  
  c_g c=new();
  initial
    begin
      for(int i=0;i<10;i++)
        begin
          in=i;
          #1;
          if(out!=in)$display("mismatch happend in the value in=%0b | out =%0b ",in,out);
          c.sample();
        end
    end
  
endmodule
