source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/cxl_io_interconnect_clock/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/avmm_interconnect_clock_in/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/afu_slave/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/cxl_compliance_slave/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/cmb2avst_slave/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/cxl_io_slave/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/hip_reconfig_clock_in/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/avmm_interconnect_reset_in/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/hip_reconfig_slave/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/debug_master/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/cxl_io_csb2wire_csr/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/cxl_io_master/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/hip_reconfig_reset_in/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/usr_avmm_hip_reconfig_slave/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/cxl_io_interconnect_reset/sim/common/riviera_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/avmm_interconnect/bbs_slave/sim/common/riviera_files.tcl]

namespace eval avmm_interconnect {
  proc get_design_libraries {} {
    set libraries [dict create]
    set libraries [dict merge $libraries [cxl_io_interconnect_clock::get_design_libraries]]
    set libraries [dict merge $libraries [avmm_interconnect_clock_in::get_design_libraries]]
    set libraries [dict merge $libraries [afu_slave::get_design_libraries]]
    set libraries [dict merge $libraries [cxl_compliance_slave::get_design_libraries]]
    set libraries [dict merge $libraries [cmb2avst_slave::get_design_libraries]]
    set libraries [dict merge $libraries [cxl_io_slave::get_design_libraries]]
    set libraries [dict merge $libraries [hip_reconfig_clock_in::get_design_libraries]]
    set libraries [dict merge $libraries [avmm_interconnect_reset_in::get_design_libraries]]
    set libraries [dict merge $libraries [hip_reconfig_slave::get_design_libraries]]
    set libraries [dict merge $libraries [debug_master::get_design_libraries]]
    set libraries [dict merge $libraries [cxl_io_csb2wire_csr::get_design_libraries]]
    set libraries [dict merge $libraries [cxl_io_master::get_design_libraries]]
    set libraries [dict merge $libraries [hip_reconfig_reset_in::get_design_libraries]]
    set libraries [dict merge $libraries [usr_avmm_hip_reconfig_slave::get_design_libraries]]
    set libraries [dict merge $libraries [cxl_io_interconnect_reset::get_design_libraries]]
    set libraries [dict merge $libraries [bbs_slave::get_design_libraries]]
    dict set libraries altera_merlin_master_translator_191  1
    dict set libraries altera_merlin_slave_translator_191   1
    dict set libraries altera_merlin_master_agent_191       1
    dict set libraries altera_merlin_slave_agent_191        1
    dict set libraries altera_avalon_sc_fifo_1931           1
    dict set libraries altera_merlin_router_1921            1
    dict set libraries altera_merlin_traffic_limiter_191    1
    dict set libraries altera_avalon_st_pipeline_stage_1920 1
    dict set libraries altera_merlin_burst_adapter_1923     1
    dict set libraries altera_merlin_demultiplexer_1921     1
    dict set libraries altera_merlin_multiplexer_1921       1
    dict set libraries altera_merlin_width_adapter_1920     1
    dict set libraries altera_mm_interconnect_1920          1
    dict set libraries avmm_interconnect                    1
    return $libraries
  }
  
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [cxl_io_interconnect_clock::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_interconnect_clock/sim/"]]
    set memory_files [concat $memory_files [avmm_interconnect_clock_in::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/avmm_interconnect_clock_in/sim/"]]
    set memory_files [concat $memory_files [afu_slave::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/afu_slave/sim/"]]
    set memory_files [concat $memory_files [cxl_compliance_slave::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_compliance_slave/sim/"]]
    set memory_files [concat $memory_files [cmb2avst_slave::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/cmb2avst_slave/sim/"]]
    set memory_files [concat $memory_files [cxl_io_slave::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_slave/sim/"]]
    set memory_files [concat $memory_files [hip_reconfig_clock_in::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/hip_reconfig_clock_in/sim/"]]
    set memory_files [concat $memory_files [avmm_interconnect_reset_in::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/avmm_interconnect_reset_in/sim/"]]
    set memory_files [concat $memory_files [hip_reconfig_slave::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/hip_reconfig_slave/sim/"]]
    set memory_files [concat $memory_files [debug_master::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/debug_master/sim/"]]
    set memory_files [concat $memory_files [cxl_io_csb2wire_csr::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_csb2wire_csr/sim/"]]
    set memory_files [concat $memory_files [cxl_io_master::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_master/sim/"]]
    set memory_files [concat $memory_files [hip_reconfig_reset_in::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/hip_reconfig_reset_in/sim/"]]
    set memory_files [concat $memory_files [usr_avmm_hip_reconfig_slave::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/usr_avmm_hip_reconfig_slave/sim/"]]
    set memory_files [concat $memory_files [cxl_io_interconnect_reset::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_interconnect_reset/sim/"]]
    set memory_files [concat $memory_files [bbs_slave::get_memory_files "$QSYS_SIMDIR/../../ip/avmm_interconnect/bbs_slave/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [cxl_io_interconnect_clock::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_interconnect_clock/sim/"]]
    set design_files [dict merge $design_files [avmm_interconnect_clock_in::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/avmm_interconnect_clock_in/sim/"]]
    set design_files [dict merge $design_files [afu_slave::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/afu_slave/sim/"]]
    set design_files [dict merge $design_files [cxl_compliance_slave::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_compliance_slave/sim/"]]
    set design_files [dict merge $design_files [cmb2avst_slave::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cmb2avst_slave/sim/"]]
    set design_files [dict merge $design_files [cxl_io_slave::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_slave/sim/"]]
    set design_files [dict merge $design_files [hip_reconfig_clock_in::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/hip_reconfig_clock_in/sim/"]]
    set design_files [dict merge $design_files [avmm_interconnect_reset_in::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/avmm_interconnect_reset_in/sim/"]]
    set design_files [dict merge $design_files [hip_reconfig_slave::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/hip_reconfig_slave/sim/"]]
    set design_files [dict merge $design_files [debug_master::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/debug_master/sim/"]]
    set design_files [dict merge $design_files [cxl_io_csb2wire_csr::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_csb2wire_csr/sim/"]]
    set design_files [dict merge $design_files [cxl_io_master::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_master/sim/"]]
    set design_files [dict merge $design_files [hip_reconfig_reset_in::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/hip_reconfig_reset_in/sim/"]]
    set design_files [dict merge $design_files [usr_avmm_hip_reconfig_slave::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/usr_avmm_hip_reconfig_slave/sim/"]]
    set design_files [dict merge $design_files [cxl_io_interconnect_reset::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_interconnect_reset/sim/"]]
    set design_files [dict merge $design_files [bbs_slave::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/bbs_slave/sim/"]]
    return $design_files
  }
  
  proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [list]
    set design_files [concat $design_files [cxl_io_interconnect_clock::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_interconnect_clock/sim/"]]
    set design_files [concat $design_files [avmm_interconnect_clock_in::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/avmm_interconnect_clock_in/sim/"]]
    set design_files [concat $design_files [afu_slave::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/afu_slave/sim/"]]
    set design_files [concat $design_files [cxl_compliance_slave::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_compliance_slave/sim/"]]
    set design_files [concat $design_files [cmb2avst_slave::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cmb2avst_slave/sim/"]]
    set design_files [concat $design_files [cxl_io_slave::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_slave/sim/"]]
    set design_files [concat $design_files [hip_reconfig_clock_in::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/hip_reconfig_clock_in/sim/"]]
    set design_files [concat $design_files [avmm_interconnect_reset_in::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/avmm_interconnect_reset_in/sim/"]]
    set design_files [concat $design_files [hip_reconfig_slave::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/hip_reconfig_slave/sim/"]]
    set design_files [concat $design_files [debug_master::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/debug_master/sim/"]]
    set design_files [concat $design_files [cxl_io_csb2wire_csr::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_csb2wire_csr/sim/"]]
    set design_files [concat $design_files [cxl_io_master::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_master/sim/"]]
    set design_files [concat $design_files [hip_reconfig_reset_in::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/hip_reconfig_reset_in/sim/"]]
    set design_files [concat $design_files [usr_avmm_hip_reconfig_slave::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/usr_avmm_hip_reconfig_slave/sim/"]]
    set design_files [concat $design_files [cxl_io_interconnect_reset::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/cxl_io_interconnect_reset/sim/"]]
    set design_files [concat $design_files [bbs_slave::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/avmm_interconnect/bbs_slave/sim/"]]
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_master_translator_191/sim/avmm_interconnect_altera_merlin_master_translator_191_g7h47bq.sv"]\"  -work altera_merlin_master_translator_191"                           
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_translator_191/sim/avmm_interconnect_altera_merlin_slave_translator_191_x56fcki.sv"]\"  -work altera_merlin_slave_translator_191"                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_master_agent_191/sim/avmm_interconnect_altera_merlin_master_agent_191_mpbm6tq.sv"]\"  -work altera_merlin_master_agent_191"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_191/sim/avmm_interconnect_altera_merlin_slave_agent_191_ncfkfri.sv"]\"  -work altera_merlin_slave_agent_191"                                             
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_191/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_slave_agent_191"                                                                    
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_sc_fifo_1931/sim/avmm_interconnect_altera_avalon_sc_fifo_1931_vhmcgqy.v"]\"  -work altera_avalon_sc_fifo_1931"                                                  
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/avmm_interconnect_altera_merlin_router_1921_it4pkhi.sv"]\"  -work altera_merlin_router_1921"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/avmm_interconnect_altera_merlin_router_1921_icidkoa.sv"]\"  -work altera_merlin_router_1921"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/avmm_interconnect_altera_merlin_router_1921_5r5zhgi.sv"]\"  -work altera_merlin_router_1921"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/avmm_interconnect_altera_merlin_router_1921_j77kgli.sv"]\"  -work altera_merlin_router_1921"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/avmm_interconnect_altera_merlin_router_1921_2gqpuxa.sv"]\"  -work altera_merlin_router_1921"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/avmm_interconnect_altera_merlin_router_1921_wf3vcdi.sv"]\"  -work altera_merlin_router_1921"                                                         
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/avmm_interconnect_altera_merlin_router_1921_keyv5yq.sv"]\"  -work altera_merlin_router_1921"                                                         
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_191/sim/avmm_interconnect_altera_merlin_traffic_limiter_altera_avalon_sc_fifo_191_vjflwfi.v"]\"  -work altera_merlin_traffic_limiter_191"       
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_191/sim/altera_merlin_reorder_memory.sv"]\"  -work altera_merlin_traffic_limiter_191"                                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_191/sim/altera_avalon_st_pipeline_base.v"]\"  -work altera_merlin_traffic_limiter_191"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_191/sim/avmm_interconnect_altera_merlin_traffic_limiter_191_6blplji.sv"]\"  -work altera_merlin_traffic_limiter_191"                                 
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_1920/sim/avmm_interconnect_altera_avalon_st_pipeline_stage_1920_zterisq.sv"]\"  -work altera_avalon_st_pipeline_stage_1920"                        
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_1920/sim/altera_avalon_st_pipeline_base.v"]\"  -work altera_avalon_st_pipeline_stage_1920"                                                         
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/avmm_interconnect_altera_merlin_burst_adapter_altera_avalon_st_pipeline_stage_1923_5rwtq5i.v"]\"  -work altera_merlin_burst_adapter_1923"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/avmm_interconnect_altera_merlin_burst_adapter_1923_cqtay7y.sv"]\"  -work altera_merlin_burst_adapter_1923"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_merlin_burst_adapter_uncmpr.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_merlin_burst_adapter_13_1.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_merlin_burst_adapter_new.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_incr_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_wrap_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_default_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                               
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/avmm_interconnect_altera_merlin_burst_adapter_altera_avalon_st_pipeline_stage_1923_7e5flyy.v"]\"  -work altera_merlin_burst_adapter_1923"
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/avmm_interconnect_altera_merlin_burst_adapter_1923_wv5ldia.sv"]\"  -work altera_merlin_burst_adapter_1923"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_merlin_burst_adapter_uncmpr.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                            
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_merlin_burst_adapter_13_1.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_merlin_burst_adapter_new.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_incr_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_wrap_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                                   
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_default_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                                
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1923/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_burst_adapter_1923"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/avmm_interconnect_altera_merlin_demultiplexer_1921_7qodgey.sv"]\"  -work altera_merlin_demultiplexer_1921"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/avmm_interconnect_altera_merlin_demultiplexer_1921_do3w3da.sv"]\"  -work altera_merlin_demultiplexer_1921"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/avmm_interconnect_altera_merlin_multiplexer_1921_t5ik4ly.sv"]\"  -work altera_merlin_multiplexer_1921"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/avmm_interconnect_altera_merlin_multiplexer_1921_5t6dnuy.sv"]\"  -work altera_merlin_multiplexer_1921"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/avmm_interconnect_altera_merlin_multiplexer_1921_x6qx2cy.sv"]\"  -work altera_merlin_multiplexer_1921"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/avmm_interconnect_altera_merlin_multiplexer_1921_7lze3pa.sv"]\"  -work altera_merlin_multiplexer_1921"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/avmm_interconnect_altera_merlin_multiplexer_1921_icrd6ja.sv"]\"  -work altera_merlin_multiplexer_1921"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/avmm_interconnect_altera_merlin_demultiplexer_1921_mthhoaq.sv"]\"  -work altera_merlin_demultiplexer_1921"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/avmm_interconnect_altera_merlin_demultiplexer_1921_2kjodbq.sv"]\"  -work altera_merlin_demultiplexer_1921"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/avmm_interconnect_altera_merlin_demultiplexer_1921_a4k7evi.sv"]\"  -work altera_merlin_demultiplexer_1921"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/avmm_interconnect_altera_merlin_demultiplexer_1921_sknv6vi.sv"]\"  -work altera_merlin_demultiplexer_1921"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/avmm_interconnect_altera_merlin_demultiplexer_1921_bsmfmma.sv"]\"  -work altera_merlin_demultiplexer_1921"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/avmm_interconnect_altera_merlin_multiplexer_1921_co4zr6q.sv"]\"  -work altera_merlin_multiplexer_1921"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/avmm_interconnect_altera_merlin_multiplexer_1921_4vot3wy.sv"]\"  -work altera_merlin_multiplexer_1921"                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                                          
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/avmm_interconnect_altera_merlin_width_adapter_1920_7r6vdty.sv"]\"  -work altera_merlin_width_adapter_1920"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_width_adapter_1920"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_width_adapter_1920"                                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/avmm_interconnect_altera_merlin_width_adapter_1920_3f4yqhi.sv"]\"  -work altera_merlin_width_adapter_1920"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_width_adapter_1920"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_width_adapter_1920"                                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/avmm_interconnect_altera_merlin_width_adapter_1920_q5moxay.sv"]\"  -work altera_merlin_width_adapter_1920"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_width_adapter_1920"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_width_adapter_1920"                                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/avmm_interconnect_altera_merlin_width_adapter_1920_7d3cali.sv"]\"  -work altera_merlin_width_adapter_1920"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_width_adapter_1920"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_width_adapter_1920"                                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/avmm_interconnect_altera_merlin_width_adapter_1920_dxcqefq.sv"]\"  -work altera_merlin_width_adapter_1920"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_width_adapter_1920"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_width_adapter_1920"                                                              
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/avmm_interconnect_altera_merlin_width_adapter_1920_4t7ioqa.sv"]\"  -work altera_merlin_width_adapter_1920"                                    
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_width_adapter_1920"                                                               
    lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_width_adapter_1920/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_width_adapter_1920"                                                              
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_mm_interconnect_1920/sim/avmm_interconnect_altera_mm_interconnect_1920_x6i2ati.v"]\"  -work altera_mm_interconnect_1920"                                               
    lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/avmm_interconnect.v"]\"  -work avmm_interconnect"                                                                                                                                
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [cxl_io_interconnect_clock::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [avmm_interconnect_clock_in::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [afu_slave::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cxl_compliance_slave::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cmb2avst_slave::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cxl_io_slave::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [hip_reconfig_clock_in::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [avmm_interconnect_reset_in::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [hip_reconfig_slave::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [debug_master::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cxl_io_csb2wire_csr::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cxl_io_master::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [hip_reconfig_reset_in::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [usr_avmm_hip_reconfig_slave::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cxl_io_interconnect_reset::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [bbs_slave::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [cxl_io_interconnect_clock::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [avmm_interconnect_clock_in::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [afu_slave::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cxl_compliance_slave::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cmb2avst_slave::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cxl_io_slave::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [hip_reconfig_clock_in::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [avmm_interconnect_reset_in::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [hip_reconfig_slave::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [debug_master::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cxl_io_csb2wire_csr::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cxl_io_master::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [hip_reconfig_reset_in::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [usr_avmm_hip_reconfig_slave::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cxl_io_interconnect_reset::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [bbs_slave::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cxl_io_interconnect_clock::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [avmm_interconnect_clock_in::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [afu_slave::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cxl_compliance_slave::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cmb2avst_slave::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cxl_io_slave::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [hip_reconfig_clock_in::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [avmm_interconnect_reset_in::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [hip_reconfig_slave::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [debug_master::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cxl_io_csb2wire_csr::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cxl_io_master::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [hip_reconfig_reset_in::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [usr_avmm_hip_reconfig_slave::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cxl_io_interconnect_reset::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [bbs_slave::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
  proc normalize_path {FILEPATH} {
      if {[catch { package require fileutil } err]} { 
          return $FILEPATH 
      } 
      set path [fileutil::lexnormalize [file join [pwd] $FILEPATH]]  
      if {[file pathtype $FILEPATH] eq "relative"} { 
          set path [fileutil::relative [pwd] $path] 
      } 
      return $path 
  } 
}
