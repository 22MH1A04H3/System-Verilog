module tb;
  logic [3:0]a,b,sum;
  logic cout;
 adder dut(.a(a),.b(b),.sum(sum),.cout(cout));
  
  //functional_coverage
  covergroup cg;
    cp1:coverpoint a{ 
      bins b1={1,2,3};
     
    }
    cp2:coverpoint b{
      bins b3={4,5,6};
     
    }
    //cross coverpoints
    cp1xcp2 : cross cp1,cp2;
    
  endgroup :cg
  
  cg c=new();
  initial
    begin
      for(int i=1;i<4;i++)
        begin
          for(int j=4;j<7;j++)
            begin
              a=i;
              b=j;
              c.sample();
              
              #10;
              
            end
        end
     #10;
      $stop();
      
    end
  
endmodule


====================================================================
 Log Share
[2025-09-19 05:34:13 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do run.do 
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: tb."
SUCCESS "Compile success 0 Errors 0 Warnings  Analysis time: 0[s]."
done
# Aldec, Inc. Riviera-PRO version 2023.04.112.8911 built for Linux64 on May 12, 2023.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2023 Aldec, Inc. All rights reserved.
vsim +access+r work.tb
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
# SLP: 0 primitives and 1 (50.00%) other processes in SLP
# SLP: 4 (6.15%) signals in SLP and 4 (6.15%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 5429 kB (elbread=455 elab2=4837 kernel=137 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
run -all
# RUNTIME: Info: RUNTIME_0070 testbench.sv (37): $stop called.
# KERNEL: Time: 100 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#22_0@.
# KERNEL: Stopped at time 100 ns + 0.
acdb save
acdb report -db fcover.acdb -txt -o cov.txt -verbose
# ACDB: Coverage report "cov.txt" was generated successfully.
exec cat cov.txt
# +++++++++++++++++++++++++++++++++++++++++++++
# ++++++++++       REPORT INFO       ++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++
# 
# 
# SUMMARY
# ===============================================
# |     Property     |          Value           |
# ===============================================
# | User             | runner                   |
# | Host             | a21bc7a7e9ce             |
# | Tool             | Riviera-PRO 2023.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2025-09-19 01:34         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2025-09-19 01:34         |
# | Number of tests  | 1                        |
# ===============================================
# 
# 
# TEST DETAILS
# ==============================================
# | Property |              Value              |
# ==============================================
# | Test     | fcover.acdb:fcover              |
# | Status   | Ok                              |
# | Args     | asim +access+r work.tb          |
# | Simtime  | 100 ns                          |
# | Cputime  | 0.002 s                         |
# | Seed     | 1                               |
# | Date     | 2025-09-19 01:34                |
# | User     | runner                          |
# | Host     | a21bc7a7e9ce                    |
# | Host os  | Linux64                         |
# | Tool     | Riviera-PRO 2023.04 (simulator) |
# ==============================================
# 
# 
# +++++++++++++++++++++++++++++++++++++++++++++
# ++++++++++     DESIGN HIERARCHY    ++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++
# 
# 
# CUMULATIVE SUMMARY
# =============================================
# |    Coverage Type    | Weight | Hits/Total |
# =============================================
# | Covergroup Coverage |      1 |   100.000% |
# |---------------------|--------|------------|
# | Types               |        |      1 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 100.000%
# COVERED INSTANCES: 1 / 1
# FILES: 1
# 
# 
# INSTANCE - /tb : work.tb
# 
# 
#     SUMMARY
#     ==========================================================================
#     |    Coverage Type    | Weight | Local Hits/Total | Recursive Hits/Total |
#     ==========================================================================
#     | Covergroup Coverage |      1 |         100.000% |             100.000% |
#     |---------------------|--------|------------------|----------------------|
#     | Types               |        |            1 / 1 |                1 / 1 |
#     ==========================================================================
#     WEIGHTED AVERAGE LOCAL: 100.000%
#     WEIGHTED AVERAGE RECURSIVE: 100.000%
# 
# 
#     COVERGROUP COVERAGE
#     ===============================================
#     | Covergroup  |   Hits   |  Goal /  | Status  |
#     |             |          | At Least |         |
#     ===============================================
#     | TYPE /tb/cg | 100.000% | 100.000% | Covered |
#     ===============================================
# 
# 
# +++++++++++++++++++++++++++++++++++++++++++++
# ++++++++++       DESIGN UNITS      ++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++
# 
# 
# CUMULATIVE SUMMARY
# =============================================
# |    Coverage Type    | Weight | Hits/Total |
# =============================================
# | Covergroup Coverage |      1 |   100.000% |
# |---------------------|--------|------------|
# | Types               |        |      1 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 100.000%
# COVERED DESIGN UNITS: 1 / 1
# FILES: 1
# 
# 
# MODULE - work.tb
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |   100.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      1 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 100.000%
# 
# 
#     COVERGROUP COVERAGE
#     ===============================================
#     | Covergroup  |   Hits   |  Goal /  | Status  |
#     |             |          | At Least |         |
#     ===============================================
#     | TYPE /tb/cg | 100.000% | 100.000% | Covered |
#     ===============================================
# 
exit
# VSIM: Simulation has finished.
