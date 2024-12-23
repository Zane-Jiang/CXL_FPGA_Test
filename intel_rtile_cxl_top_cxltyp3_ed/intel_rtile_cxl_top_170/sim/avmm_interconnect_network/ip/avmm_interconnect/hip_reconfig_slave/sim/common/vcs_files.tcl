
namespace eval hip_reconfig_slave {
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    return $memory_files
  }
  
  proc get_common_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    return $design_files
  }
  
  proc get_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    dict set design_files "hip_reconfig_slave_st_dc_fifo_1941_t2zlahy.v"        "$QSYS_SIMDIR/../st_dc_fifo_1941/sim/hip_reconfig_slave_st_dc_fifo_1941_t2zlahy.v"   
    dict set design_files "altera_reset_synchronizer.v"                         "$QSYS_SIMDIR/../st_dc_fifo_1941/sim/altera_reset_synchronizer.v"                    
    dict set design_files "altera_dcfifo_synchronizer_bundle.v"                 "$QSYS_SIMDIR/../st_dc_fifo_1941/sim/altera_dcfifo_synchronizer_bundle.v"            
    dict set design_files "altera_std_synchronizer_nocut.v"                     "$QSYS_SIMDIR/../st_dc_fifo_1941/sim/altera_std_synchronizer_nocut.v"                
    dict set design_files "hip_reconfig_slave_mm_ccb_st_dc_fifo_1921_ztdlohy.v" "$QSYS_SIMDIR/../mm_ccb_1921/sim/hip_reconfig_slave_mm_ccb_st_dc_fifo_1921_ztdlohy.v"
    dict set design_files "hip_reconfig_slave_mm_ccb_st_dc_fifo_1921_wpesjri.v" "$QSYS_SIMDIR/../mm_ccb_1921/sim/hip_reconfig_slave_mm_ccb_st_dc_fifo_1921_wpesjri.v"
    dict set design_files "hip_reconfig_slave_mm_ccb_1921_lcsq4ni.v"            "$QSYS_SIMDIR/../mm_ccb_1921/sim/hip_reconfig_slave_mm_ccb_1921_lcsq4ni.v"           
    dict set design_files "hip_reconfig_slave.v"                                "$QSYS_SIMDIR/hip_reconfig_slave.v"                                                  
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
