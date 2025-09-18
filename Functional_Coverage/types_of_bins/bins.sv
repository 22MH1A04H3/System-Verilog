//buffer verification
module tb;
  logic [3:0]in,out;
  
//dut instantiation
  buffer dut(.in(in),.out(out));
  
  covergroup c_g @(in,out);
    cp1:coverpoint in;//hits all values form 0 to 15
    cp2:coverpoint out{ bins b1={1,4,9};
                        bins b2={[0:3]};
                        bins b3[]={[13:15]}; //hits when 13 14 15 values
                        bins b4[4]={[0:8]};// bins division - 01 23 45 67 8
                     bins b5[]={[0:4],[5:10],12};
                      bins b6[]={[5:$]};
                       
                    
                      }
  endgroup
  
  c_g c=new();
  initial
    begin
      for(int i=0;i<16;i++)
        begin
          in=i;
          #10;
          if(out!=in)$display("mismatch happend in the value in=%0b | out =%0b ",in,out);
          c.sample();
        end
    end
  initial
    begin
    /*  in=12;
      #2;
      in=15;
      c.sample();
      
      #2;
      in=15;
      c.sample();*/
      
    end
  
endmodule



















===========================================================================
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
# | Host             | 615f1afe1c9f             |
# | Tool             | Riviera-PRO 2023.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2025-09-18 11:54         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2025-09-18 11:54         |
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
# | Simtime  | 160 ns                          |
# | Cputime  | 0.002 s                         |
# | Seed     | 1                               |
# | Date     | 2025-09-18 11:54                |
# | User     | runner                          |
# | Host     | 615f1afe1c9f                    |
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
#     ================================================
#     |  Covergroup  |   Hits   |  Goal /  | Status  |
#     |              |          | At Least |         |
#     ================================================
#     | TYPE /tb/c_g | 100.000% | 100.000% | Covered |
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
#     ================================================
#     |  Covergroup  |   Hits   |  Goal /  | Status  |
#     |              |          | At Least |         |
#     ================================================
#     | TYPE /tb/c_g | 100.000% | 100.000% | Covered |
#     ================================================
# 
exit
# VSIM: Simulation has finished.





