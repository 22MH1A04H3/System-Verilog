//system_veilog_data_types
//2_state_ and_4_state_data_types
module tb;
  //2_state_data_types
  bit a;//unsigned
  byte b;//signed
  byte unsigned l;//unsigned
  int c;//signed
  shortint d;//signed
  longint e;//signed
  //4_state_data_types_which_allow_4_states
  logic f;
  reg g;
  integer h;//unsigned
  time i;
  real j;
  realtime k;
  initial
    begin
      a=$random();
      $display("a=%0b",a);
      b=$random();
      $display("b=%0b",b);
      c=$random();
      $display("c=%0b",c);
      d=$random();
      $display("d=%0b",d);
      e=$random();
      $display("e=%0b",e);
      f=$random();
      $display("f=%0b",f);
      g=$random();
      $display("g=%0b",g);
      h=$random();
      
      $display("h=%0b",h);
      #10;
     
      $display("i=%0t",$time);
      j=3.14;
      $display("j=%b",j);
     #20;
      $display("k=%0t",$realtime);
      l=$random();
      $display("l=%0b",l);
      
    end
endmodule
