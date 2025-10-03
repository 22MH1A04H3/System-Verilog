module events;
  int a,b;
 bit clk=0;
  always #5 clk = ~clk;
    always@(a,b)
    begin
      $display("the value a = %0d | b= %0d ",a,b);
    end
 always@(posedge clk)
    begin
      $display("the clk  is triggering");
    end
  initial 
    begin
      for(int i=0;i<7;i++)
        begin
      a=$random();
      b=$random();
          #5;
        end
      #100;
      $finish();
      
    end
endmodule
