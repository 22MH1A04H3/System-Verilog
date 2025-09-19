module tb;
  logic [3:0]in,out;
  
 //dut
  buffer dut(.in(in),.out(out));
  
  //functional coverage
  covergroup cg;
    //ignore bins
    cp1:coverpoint{
      ignore_bins b1={1,2,3};
      ignore_bins b2=(1 => 5 => 9);
    }
    
    //illegal bins
    cp2:coverpoint{
      illegal_bins b3={2,4,6};
      illegal_bins b4=(3 => 9);
    }
  endgroup 
  
  
  cg c = new();
  
  
  initial
    begin
      in=1;
      c.sample();
       #2;
      in=5;
      c.sample();
      
      #2;
      in=9;
       c.sample();
      #2;
      in=3;
      c.sample();
      #2;
      in=9;
       c.sample();
      #10;
       
      $stop();
      
      
    end
endmodule


=========================================================================
[2025-09-19 04:34:52 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do run.do 
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
# SLP: Generation phase ... done : 0.0 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 1 (50.00%) other processes in SLP
# SLP: 2 (4.35%) signals in SLP and 2 (4.35%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 5427 kB (elbread=455 elab2=4835 kernel=136 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
run -all
# ACDB: Error: ACDB_0012 testbench.sv (18): Illegal bin 'b4' was hit with transition '(3=>9)' at iteration #4 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/tb". Covergroup type: "cg", covergroup instance: "<UNNAMED1>", coverpoint: "cp2".
# RUNTIME: Info: RUNTIME_0070 testbench.sv (45): $stop called.
# KERNEL: Time: 18 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#26_0@.
# KERNEL: Stopped at time 18 ns + 0.
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
# | Host             | dbc6d9a7679f             |
# | Tool             | Riviera-PRO 2023.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2025-09-19 00:34         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2025-09-19 00:34         |
# | Number of tests  | 1                        |
# ===============================================
# 
# 
# TEST DETAILS
# ==============================================
# | Property |              Value              |
# ==============================================
# | Test     | fcover.acdb:fcover              |
# | Status   | Error                           |
# | Args     | asim +access+r work.tb          |
# | Simtime  | 18 ns                           |
# | Cputime  | 0.009 s                         |
# | Seed     | 1                               |
# | Date     | 2025-09-19 00:34                |
# | User     | runner                          |
# | Host     | dbc6d9a7679f                    |
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
# | Covergroup Coverage |      1 |    23.076% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 23.076%
# COVERED INSTANCES: 0 / 1
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
#     | Covergroup Coverage |      1 |          23.076% |              23.076% |
#     |---------------------|--------|------------------|----------------------|
#     | Types               |        |            0 / 1 |                0 / 1 |
#     ==========================================================================
#     WEIGHTED AVERAGE LOCAL: 23.076%
#     WEIGHTED AVERAGE RECURSIVE: 23.076%
# 
# 
#     COVERGROUP COVERAGE
#     ================================================
#     | Covergroup  |  Hits   |  Goal /  |  Status   |
#     |             |         | At Least |           |
#     ================================================
#     | TYPE /tb/cg | 23.076% | 100.000% | Uncovered |
#     ================================================
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
# | Covergroup Coverage |      1 |    23.076% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 23.076%
# COVERED DESIGN UNITS: 0 / 1
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
#     | Covergroup Coverage |      1 |    23.076% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 23.076%
# 
# 
#     COVERGROUP COVERAGE
#     ================================================
#     | Covergroup  |  Hits   |  Goal /  |  Status   |
#     |             |         | At Least |           |
#     ================================================
#     | TYPE /tb/cg | 23.076% | 100.000% | Uncovered |
#     ================================================
# 
exit
# VSIM: Simulation has finished.
