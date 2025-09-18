//buffer verification
module tb;
  logic [3:0]in,out;
  
//dut instantiation
  buffer dut(.in(in),.out(out));
  
  covergroup c_g;
    cp:coverpoint in;//hits all values form 0 to 15
    
  endgroup
  
  c_g c=new();
  initial
    begin
      for(int i=0;i<16;i++)
        begin
          in=i;
          if(out!=in)$display("mismatch happend in the value in=%0b | out =%0b ",in,out);
          c.sample();
        end
    end
  
endmodule
