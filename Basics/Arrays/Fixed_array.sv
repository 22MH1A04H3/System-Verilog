module arrays;
  int arr[5];
  int arr1[7:0];
  int arr2[2:0][3:0];
  
  initial
    begin
      arr='{2,3,4,5,6};
      arr1='{2,3,4,5,6,7,8,0};
      arr2='{'{2,4,6,8},'{1,2,3,4},'{5,6,7,8}};;
      foreach(arr[i])
        begin
          $display("arr[%0d]==%0d",arr[i],i);
        end
      $display("+++++++++++++++++++++++++++++++++++++");
      foreach(arr1[i])
        begin
          $display("arr[%0d]==%0d",arr[i],i);
        end
        $display("+++++++++++++++++++++++++++++++++++++");
      foreach(arr2[i])
        begin
          $display("arr[%0d]==%0d",arr[i],i);
        end
    end
endmodule

================================
[2025-09-25 16:40:10 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: arrays."
SUCCESS "Compile success 0 Errors 0 Warnings  Analysis time: 0[s]."
done
# Aldec, Inc. Riviera-PRO version 2023.04.112.8911 built for Linux64 on May 12, 2023.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2023 Aldec, Inc. All rights reserved.
# ELBREAD: Elaboration process.
# ELBREAD: Elaboration time 0.0 [s].
# KERNEL: Main thread initiated.
# KERNEL: Kernel process initialization phase.
# ELAB2: Elaboration final pass...
# ELAB2: Create instances ...
# KERNEL: Time resolution set to 1ns.
# ELAB2: Create instances complete.
# SLP: Started
# SLP: Elaboration phase ...
# SLP: Elaboration phase ... done : 0.0 [s]
# SLP: Generation phase ...
# SLP: Generation phase ... done : 0.1 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 1 (100.00%) other processes in SLP
# SLP: 3 (50.00%) signals in SLP and 3 (50.00%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4666 kB (elbread=427 elab2=4105 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: arr[2]==0
# KERNEL: arr[3]==1
# KERNEL: arr[4]==2
# KERNEL: arr[5]==3
# KERNEL: arr[6]==4
# KERNEL: +++++++++++++++++++++++++++++++++++++
# KERNEL: arr[0]==7
# KERNEL: arr[0]==6
# KERNEL: arr[0]==5
# KERNEL: arr[6]==4
# KERNEL: arr[5]==3
# KERNEL: arr[4]==2
# KERNEL: arr[3]==1
# KERNEL: arr[2]==0
# KERNEL: +++++++++++++++++++++++++++++++++++++
# KERNEL: arr[4]==2
# KERNEL: arr[3]==1
# KERNEL: arr[2]==0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
