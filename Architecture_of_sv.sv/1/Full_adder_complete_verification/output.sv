[2025-12-12 17:11:04 UTC] vcs -full64 -licqueue '-timescale=1ns/1ps' '+vcs+flush+all' '+warn=all' '-sverilog' design.sv testbench.sv  && ./simv +vcs+lic+wait  
                         Chronologic VCS (TM)
       Version U-2023.03-SP2_Full64 -- Fri Dec 12 12:11:05 2025

                    Copyright (c) 1991 - 2023 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
   or distribution of this software is strictly prohibited.  Licensed Products
     communicate with Synopsys servers for the purpose of providing software
    updates, detecting software piracy and verifying that customers are using
    Licensed Products in conformity with the applicable License Key for such
  Licensed Products. Synopsys will use information gathered in connection with
    this process to deliver software updates and pursue software pirates and
                                   infringers.

 Inclusivity & Diversity - Visit SolvNetPlus to read the "Synopsys Statement on
            Inclusivity and Diversity" (Refer to article 000036315 at
                        https://solvnetplus.synopsys.com)

Parsing design file 'design.sv'
Parsing design file 'testbench.sv'
Parsing included file 'interface.sv'.
Back to file 'testbench.sv'.
Parsing included file 'test.sv'.
Parsing included file 'environment.sv'.
Parsing included file 'transaction.sv'.
Back to file 'environment.sv'.
Parsing included file 'generator.sv'.
Back to file 'environment.sv'.
Parsing included file 'driver.sv'.
Back to file 'environment.sv'.
Parsing included file 'monitor.sv'.
Back to file 'environment.sv'.
Parsing included file 'scoreboard.sv'.
Back to file 'environment.sv'.
Back to file 'test.sv'.
Back to file 'testbench.sv'.
Top Level Modules:
       testbench
TimeScale is 1 ns / 1 ps
Notice: Ports coerced to inout, use -notice for details
Starting vcs inline pass...

4 modules and 0 UDP read.
recompiling module full_adder
recompiling module intf
recompiling module test
recompiling module testbench
All of 4 modules done
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .486 seconds to compile + .613 seconds to elab + .293 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Dec 12 12:11 2025
__________ generator class signals _________
a = 0, b=1, c=1,  sum = 0, carry = 0
.......................
__________ generator class signals _________
a = 1, b=0, c=0,  sum = 0, carry = 0
.......................
__________ generator class signals _________
a = 0, b=0, c=1,  sum = 0, carry = 0
.......................
__________ generator class signals _________
a = 1, b=0, c=0,  sum = 0, carry = 0
.......................
__________ monitor class signals _________
a = 0, b=1, c=1,  sum = 0, carry = 1
.......................
__________ scoreboard signals _________
a = 0, b=1, c=1,  sum = 0, carry = 1
.......................
******* PASS *******
//////////////////////////Trasaction Done////////////////////////////////
                                                                          
__________ monitor class signals _________
a = 0, b=1, c=1,  sum = 0, carry = 1
.......................
__________ scoreboard signals _________
a = 0, b=1, c=1,  sum = 0, carry = 1
.......................
******* PASS *******
//////////////////////////Trasaction Done////////////////////////////////
                                                                          
__________ monitor class signals _________
a = 0, b=1, c=1,  sum = 0, carry = 1
.......................
__________ scoreboard signals _________
a = 0, b=1, c=1,  sum = 0, carry = 1
.......................
******* PASS *******
//////////////////////////Trasaction Done////////////////////////////////
                                                                          
__________ monitor class signals _________
a = 0, b=1, c=1,  sum = 0, carry = 1
.......................
__________ scoreboard signals _________
a = 0, b=1, c=1,  sum = 0, carry = 1
.......................
******* PASS *******
//////////////////////////Trasaction Done////////////////////////////////
                                                                          
__________ driver class signals _________
a = 0, b=1, c=1,  sum = 0, carry = 0
.......................
__________ driver class signals _________
a = 1, b=0, c=0,  sum = 0, carry = 0
.......................
__________ driver class signals _________
a = 0, b=0, c=1,  sum = 0, carry = 0
.......................
__________ driver class signals _________
a = 1, b=0, c=0,  sum = 0, carry = 0
.......................
$finish at simulation time                40000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 40000 ps
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Fri Dec 12 12:11:07 2025
Creating result.zip...
  adding: .10.116.0.5_27020.txt (stored 0%)
  adding: csrc/ (stored 0%)
  adding: csrc/filelist.dpi (stored 0%)
  adding: csrc/archive.0/ (stored 0%)
  adding: csrc/archive.0/_332_archive_1.a (deflated 84%)
  adding: csrc/archive.0/_332_archive_1.a.info (deflated 23%)
  adding: csrc/rmar_llvm_0_1.o (deflated 64%)
  adding: csrc/rmapats.c (deflated 57%)
  adding: csrc/clean.sh (deflated 37%)
  adding: csrc/filelist (deflated 53%)
  adding: csrc/.9.9.0.compview.txt (deflated 46%)
  adding: csrc/filelist.pli (stored 0%)
  adding: csrc/filelist.cu (deflated 48%)
  adding: csrc/rmapats.h (deflated 80%)
  adding: csrc/rmar.c (deflated 30%)
  adding: csrc/SIM_l.o (deflated 74%)
  adding: csrc/hsim/ (stored 0%)
  adding: csrc/hsim/hsim.sdb (deflated 66%)
  adding: csrc/rmapats_mop.o (deflated 70%)
  adding: csrc/filelist.hsopt.objs (deflated 25%)
  adding: csrc/rmar_nd.o (deflated 74%)
  adding: csrc/Makefile.hsopt (deflated 54%)
  adding: csrc/objs/ (stored 0%)
  adding: csrc/objs/amcQw_d.o (deflated 83%)
  adding: csrc/rmar0.h (deflated 39%)
  adding: csrc/product_timestamp (stored 0%)
  adding: csrc/cginfo.json (stored 0%)
  adding: csrc/import_dpic.h (stored 0%)
  adding: csrc/Makefile (deflated 60%)
  adding: csrc/cgproc.332.json (stored 0%)
  adding: csrc/rmar_llvm_0_0.o (deflated 84%)
  adding: csrc/cgincr.sdb (deflated 39%)
  adding: csrc/rmar.o (deflated 70%)
  adding: csrc/rmapats.m (stored 0%)
  adding: csrc/filelist.hsopt.llvm2_0.objs (deflated 20%)
  adding: csrc/rmapats.o (deflated 63%)
  adding: csrc/diag/ (stored 0%)
  adding: csrc/filelist.hsopt (deflated 54%)
  adding: csrc/_332_archive_1.so (deflated 82%)
  adding: csrc/rmar.h (deflated 36%)
  adding: simv (deflated 53%)
  adding: simv.daidir/ (stored 0%)
  adding: simv.daidir/vcselab_misc_hsdef.db (deflated 79%)
  adding: simv.daidir/rmapats.dat (deflated 71%)
  adding: simv.daidir/vcselab_misc_hsim_fegate.db (deflated 77%)
  adding: simv.daidir/vcselab_misc_partitionDbg.db (deflated 67%)
  adding: simv.daidir/rmapats.so (deflated 72%)
  adding: simv.daidir/covg_defs (stored 0%)
  adding: simv.daidir/.daidir_complete (stored 0%)
  adding: simv.daidir/build_db (deflated 26%)
  adding: simv.daidir/elabmoddb.sdb (deflated 60%)
  adding: simv.daidir/vcselab_master_hsim_virtintf_info.dat (deflated 41%)
  adding: simv.daidir/prof.sdb (deflated 49%)
  adding: simv.daidir/vcselab_misc_midd.db (stored 0%)
  adding: simv.daidir/vcselab_misc_hsim_elab.db (deflated 79%)
  adding: simv.daidir/.normal_done (stored 0%)
  adding: simv.daidir/vcselab_master_hsim_elabout.db (deflated 78%)
  adding: simv.daidir/binmap.sdb (deflated 43%)
  adding: simv.daidir/cgname.json (deflated 69%)
  adding: simv.daidir/vcs_rebuild (deflated 25%)
  adding: simv.daidir/vcselab_misc_vcselabref.db (stored 0%)
  adding: simv.daidir/stitch_nsparam.dat (stored 0%)
  adding: simv.daidir/vce.sdb (deflated 50%)
  adding: simv.daidir/vcselab_misc_partition.db (deflated 74%)
  adding: simv.daidir/vcselab_misc_mnmn.db (deflated 12%)
  adding: simv.daidir/vcselab_misc_hsim_name.db (stored 0%)
  adding: simv.daidir/vcselab_misc_hsim_lvl.db (deflated 71%)
  adding: simv.daidir/tt.sdb (deflated 47%)
  adding: simv.daidir/hslevel_rtime_level.sdb (deflated 56%)
  adding: simv.daidir/hslevel_level.sdb (deflated 70%)
  adding: simv.daidir/pcc.sdb (deflated 63%)
  adding: simv.daidir/vcselab_misc_hsim_checkloop_hsimvce.db (stored 0%)
  adding: simv.daidir/pcxpxmr.dat (stored 0%)
  adding: simv.daidir/saifNetInfo.db (stored 0%)
  adding: simv.daidir/debug_dump/ (stored 0%)
  adding: simv.daidir/debug_dump/topmodules (stored 0%)
  adding: simv.daidir/debug_dump/.version (stored 0%)
  adding: simv.daidir/debug_dump/vir.sdb (deflated 53%)
  adding: simv.daidir/debug_dump/AllModulesSkeletons.sdb (deflated 51%)
  adding: simv.daidir/debug_dump/dumpcheck.db (stored 0%)
  adding: simv.daidir/eblklvl.db (deflated 70%)
  adding: simv.daidir/_332_archive_1.so (deflated 82%)
  adding: simv.daidir/nsparam.dat (stored 0%)
  adding: simv.daidir/vcselab_misc_hsim_uds.db (deflated 33%)
  adding: simv.daidir/hsscan_cfg.dat (stored 0%)
  adding: simv.daidir/hslevel_callgraph.sdb (deflated 75%)
  adding: simv.daidir/.vcs.timestamp (deflated 63%)
  adding: ucli.key (stored 0%)
  adding: dump.vcd (deflated 55%)
  adding: driver.sv (deflated 57%)
  adding: work/ (stored 0%)
  adding: generator.sv (deflated 56%)
  adding: interface.sv (deflated 45%)
  adding: testbench.sv (deflated 43%)
  adding: design.sv (deflated 48%)
  adding: transaction.sv (deflated 52%)
  adding: ACCELLERA_OVL_VHDL_LIB/ (stored 0%)
  adding: dump_vpd.do (deflated 7%)
  adding: monitor.sv (deflated 57%)
  adding: environment.sv (deflated 61%)
  adding: scoreboard.sv (deflated 62%)
  adding: test.sv (deflated 46%)
  adding: run.sh (deflated 44%)
  adding: synopsys_sim.setup (deflated 73%)
  adding: .bash_profile (deflated 21%)
  adding: .bash_logout (stored 0%)
  adding: .bashrc (deflated 23%)
[2025-12-12 17:11:08 UTC] Waiting for download...
