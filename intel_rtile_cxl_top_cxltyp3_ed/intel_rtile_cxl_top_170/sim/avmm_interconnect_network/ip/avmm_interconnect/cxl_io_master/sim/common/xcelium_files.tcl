
namespace eval cxl_io_master {
  proc get_design_libraries {} {
    set libraries [dict create]
    dict set libraries st_dc_fifo_1941 1
    dict set libraries mm_ccb_1921     1
    dict set libraries cxl_io_master   1
    return $libraries
  }
  
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    return $memory_files
  }
  
  proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [dict create]
    return $design_files
  }
  
  proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [list]
    lappend design_files "xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../st_dc_fifo_1941/sim/cxl_io_master_st_dc_fifo_1941_t2zlahy.v\"  -work st_dc_fifo_1941 -cdslib  ./cds_libs/st_dc_fifo_1941.cds.lib"
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../st_dc_fifo_1941/sim/altera_reset_synchronizer.v\"  -work st_dc_fifo_1941 -cdslib  ./cds_libs/st_dc_fifo_1941.cds.lib"        
    lappend design_files "xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../st_dc_fifo_1941/sim/altera_dcfifo_synchronizer_bundle.v\"  -work st_dc_fifo_1941 -cdslib  ./cds_libs/st_dc_fifo_1941.cds.lib"    
    lappend design_files "xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../st_dc_fifo_1941/sim/altera_std_synchronizer_nocut.v\"  -work st_dc_fifo_1941 -cdslib  ./cds_libs/st_dc_fifo_1941.cds.lib"        
    lappend design_files "xmvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../mm_ccb_1921/sim/cxl_io_master_mm_ccb_st_dc_fifo_1921_4asniea.v\"  -work mm_ccb_1921"                                   
    lappend design_files "xmvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../mm_ccb_1921/sim/cxl_io_master_mm_ccb_st_dc_fifo_1921_wen3bsa.v\"  -work mm_ccb_1921"                                   
    lappend design_files "xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../mm_ccb_1921/sim/cxl_io_master_mm_ccb_1921_lcsq4ni.v\"  -work mm_ccb_1921 -cdslib  ./cds_libs/mm_ccb_1921.cds.lib"                
    lappend design_files "xmvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/cxl_io_master.v\"  -work cxl_io_master"                                                                                   
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
}
