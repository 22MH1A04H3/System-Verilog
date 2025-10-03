class das;
  rand bit [4:0]data;
  constraint range{data inside{[1:10]};
                  }
endclass
das v;

module tb;
  initial
    begin
     
      repeat(10)
        begin
           v=new();
          v.randomize();
          $display("data = %0d ",v.data);
          #5;
          
        end
      #10;
      $stop;
      
      
    end
endmodule
