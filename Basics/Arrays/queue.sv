//queues in system verilog 
module que;
  int que[$];//unbounded queue
  string que1[$:10];//bounded queue
  initial
    begin
      que={1,5,4,2,8,3,6,9,4};
      que1={"dasu","koda","laxmi","narayana","devi","pooja"};
      $display("The integer que = %0p",que);
      $display("The string  que = %0p",que1);
      //lets consider the que
      que.push_front(20);
       $display("The integer que = %0p",que);
      que.push_back(50);
       $display("The integer que = %0p",que);
      que.pop_back();
       $display("The integer que = %0p",que);
      que.pop_front();
       $display("The integer que = %0p",que);
      $display("The queue size is = %0d",que.size());
      que.delete();
      $display("The que = %0p",que);
      
      
      
      
    end
endmodule


=============================================================
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 26 02:55 2025
The integer que = '{1, 5, 4, 2, 8, 3, 6, 9, 4} 
The string  que = '{"dasu", "koda", "laxmi", "narayana", "devi", "pooja"} 
The integer que = '{20, 1, 5, 4, 2, 8, 3, 6, 9, 4} 
The integer que = '{20, 1, 5, 4, 2, 8, 3, 6, 9, 4, 50} 
The integer que = '{20, 1, 5, 4, 2, 8, 3, 6, 9, 4} 
The integer que = '{1, 5, 4, 2, 8, 3, 6, 9, 4} 
The queue size is = 9
The que = '{}
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
