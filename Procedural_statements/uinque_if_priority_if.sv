module unique_if;
  int a,b,c;
  int p,p1,p2;
  
  initial
    begin
      a=10;
      b=20;
      c=30;
      p=50;
      p1=30;
      p2=60;
      
      priority if(a<b)$display("a is less than b ");
      else if(a<c)$display("a is less than c ");
      else $display("a is smaller than b and c ");
      
      priority if(p>p1)$display("a is less than b ");
      else if(p>p2)$display("a is less than c ");
      else $display("a is smaller than b and c ");
      
      
    end
endmodule
