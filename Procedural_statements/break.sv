module break_;
  int a;
  initial
    begin
      for(int i=0;i<10;i++)
        begin
          $display("the value of a = %0d",a);
          a++;
          if(a==5)
            begin
              $display("break is activated ");
            break;
              $display("break is deActivated");//break statements
            end
          
        end
     
    end
endmodule
