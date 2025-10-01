//repeat ane forever keyword
module repeat_forever;
 int a;
  int b=10;
  
  initial
    begin
      repeat(5)
        begin
          $display("DIsplaying a = %0d",a);
          a++;
      
        end
      $display("________________________________________");
      forever
        begin
          $display("DIsplaying b = %0d",b);
           
          #5;
          b++;
        end
      
    end
  initial
        begin
          #50;
          $finish();
          
        end
     
endmodule
