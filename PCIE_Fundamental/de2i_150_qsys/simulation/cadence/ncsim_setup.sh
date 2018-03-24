
# (C) 2001-2017 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 16.1 196 win32 2017.11.18.11:03:37

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     de2i_150_qsys
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify USER_DEFINED_COMPILE_OPTIONS.
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If de2i_150_qsys is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 16.1 196 win32 2017.11.18.11:03:37
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="de2i_150_qsys"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/intelfpga_lite/16.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/router_001/
mkdir -p ./libraries/avalon_st_adapter_001/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/pcie_ip_bar1_0_to_fifo_memory_in_csr_cmd_width_adapter/
mkdir -p ./libraries/rsp_mux_002/
mkdir -p ./libraries/rsp_mux_001/
mkdir -p ./libraries/rsp_demux_006/
mkdir -p ./libraries/cmd_mux_006/
mkdir -p ./libraries/cmd_mux_003/
mkdir -p ./libraries/cmd_mux_001/
mkdir -p ./libraries/cmd_demux_004/
mkdir -p ./libraries/cmd_demux_002/
mkdir -p ./libraries/cmd_demux_001/
mkdir -p ./libraries/fifo_memory_in_burst_adapter/
mkdir -p ./libraries/pcie_ip_bar1_0_limiter/
mkdir -p ./libraries/router_011/
mkdir -p ./libraries/router_008/
mkdir -p ./libraries/router_007/
mkdir -p ./libraries/router_006/
mkdir -p ./libraries/router_005/
mkdir -p ./libraries/router_004/
mkdir -p ./libraries/fifo_memory_in_agent_rsp_fifo/
mkdir -p ./libraries/fifo_memory_in_agent/
mkdir -p ./libraries/pcie_ip_bar1_0_agent/
mkdir -p ./libraries/fifo_memory_in_translator/
mkdir -p ./libraries/pcie_ip_bar1_0_translator/
mkdir -p ./libraries/pipe_interface_internal/
mkdir -p ./libraries/reset_controller_internal/
mkdir -p ./libraries/altgx_internal/
mkdir -p ./libraries/pcie_internal_hip/
mkdir -p ./libraries/cpu/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/irq_mapper_001/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_2/
mkdir -p ./libraries/mm_interconnect_1/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/sgdma/
mkdir -p ./libraries/pcie_ip/
mkdir -p ./libraries/onchip_memory/
mkdir -p ./libraries/nios2/
mkdir -p ./libraries/led/
mkdir -p ./libraries/fifo_memory/
mkdir -p ./libraries/button/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneiv_hssi_ver/
mkdir -p ./libraries/cycloneiv_pcie_hip_ver/
mkdir -p ./libraries/cycloneiv_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/submodules/de2i_150_qsys_onchip_memory.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"        -work altera_ver            
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                 -work lpm_ver               
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                    -work sgate_ver             
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                -work altera_mf_ver         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"            -work altera_lnsim_ver      
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_atoms.v"     -work cycloneiv_hssi_ver    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_atoms.v" -work cycloneiv_pcie_hip_ver
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_atoms.v"          -work cycloneiv_ver         
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv" -work error_adapter_0                                        -cdslib ./cds_libs/error_adapter_0.cds.lib                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"     -work error_adapter_0                                        -cdslib ./cds_libs/error_adapter_0.cds.lib                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_2_rsp_mux.sv"                               -work rsp_mux                                                -cdslib ./cds_libs/rsp_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work rsp_mux                                                -cdslib ./cds_libs/rsp_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_2_cmd_mux.sv"                               -work cmd_mux                                                -cdslib ./cds_libs/cmd_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work cmd_mux                                                -cdslib ./cds_libs/cmd_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_2_cmd_demux.sv"                             -work cmd_demux                                              -cdslib ./cds_libs/cmd_demux.cds.lib                                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_2_router_003.sv"                            -work router_003                                             -cdslib ./cds_libs/router_003.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_2_router_002.sv"                            -work router_002                                             -cdslib ./cds_libs/router_002.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_2_router.sv"                                -work router                                                 -cdslib ./cds_libs/router.cds.lib                                                
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_1_rsp_mux.sv"                               -work rsp_mux                                                -cdslib ./cds_libs/rsp_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work rsp_mux                                                -cdslib ./cds_libs/rsp_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_1_rsp_demux.sv"                             -work rsp_demux                                              -cdslib ./cds_libs/rsp_demux.cds.lib                                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_1_cmd_mux.sv"                               -work cmd_mux                                                -cdslib ./cds_libs/cmd_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work cmd_mux                                                -cdslib ./cds_libs/cmd_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_1_cmd_demux.sv"                             -work cmd_demux                                              -cdslib ./cds_libs/cmd_demux.cds.lib                                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_1_router_001.sv"                            -work router_001                                             -cdslib ./cds_libs/router_001.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_1_router.sv"                                -work router                                                 -cdslib ./cds_libs/router.cds.lib                                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_avalon_st_adapter_001.v"                  -work avalon_st_adapter_001                                  -cdslib ./cds_libs/avalon_st_adapter_001.cds.lib                                 
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_avalon_st_adapter.v"                      -work avalon_st_adapter                                      -cdslib ./cds_libs/avalon_st_adapter.cds.lib                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                           -work pcie_ip_bar1_0_to_fifo_memory_in_csr_cmd_width_adapter -cdslib ./cds_libs/pcie_ip_bar1_0_to_fifo_memory_in_csr_cmd_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                       -work pcie_ip_bar1_0_to_fifo_memory_in_csr_cmd_width_adapter -cdslib ./cds_libs/pcie_ip_bar1_0_to_fifo_memory_in_csr_cmd_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                      -work pcie_ip_bar1_0_to_fifo_memory_in_csr_cmd_width_adapter -cdslib ./cds_libs/pcie_ip_bar1_0_to_fifo_memory_in_csr_cmd_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_rsp_mux_002.sv"                           -work rsp_mux_002                                            -cdslib ./cds_libs/rsp_mux_002.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work rsp_mux_002                                            -cdslib ./cds_libs/rsp_mux_002.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_rsp_mux_001.sv"                           -work rsp_mux_001                                            -cdslib ./cds_libs/rsp_mux_001.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work rsp_mux_001                                            -cdslib ./cds_libs/rsp_mux_001.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_rsp_mux.sv"                               -work rsp_mux                                                -cdslib ./cds_libs/rsp_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work rsp_mux                                                -cdslib ./cds_libs/rsp_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_rsp_demux_006.sv"                         -work rsp_demux_006                                          -cdslib ./cds_libs/rsp_demux_006.cds.lib                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_rsp_demux.sv"                             -work rsp_demux                                              -cdslib ./cds_libs/rsp_demux.cds.lib                                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_cmd_mux_006.sv"                           -work cmd_mux_006                                            -cdslib ./cds_libs/cmd_mux_006.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work cmd_mux_006                                            -cdslib ./cds_libs/cmd_mux_006.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_cmd_mux_003.sv"                           -work cmd_mux_003                                            -cdslib ./cds_libs/cmd_mux_003.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work cmd_mux_003                                            -cdslib ./cds_libs/cmd_mux_003.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_cmd_mux_001.sv"                           -work cmd_mux_001                                            -cdslib ./cds_libs/cmd_mux_001.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work cmd_mux_001                                            -cdslib ./cds_libs/cmd_mux_001.cds.lib                                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_cmd_mux.sv"                               -work cmd_mux                                                -cdslib ./cds_libs/cmd_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work cmd_mux                                                -cdslib ./cds_libs/cmd_mux.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_cmd_demux_004.sv"                         -work cmd_demux_004                                          -cdslib ./cds_libs/cmd_demux_004.cds.lib                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_cmd_demux_002.sv"                         -work cmd_demux_002                                          -cdslib ./cds_libs/cmd_demux_002.cds.lib                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_cmd_demux_001.sv"                         -work cmd_demux_001                                          -cdslib ./cds_libs/cmd_demux_001.cds.lib                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_cmd_demux.sv"                             -work cmd_demux                                              -cdslib ./cds_libs/cmd_demux.cds.lib                                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                           -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                                    -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                                      -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                                       -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                           -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                           -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                                        -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                       -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                       -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                         -work fifo_memory_in_burst_adapter                           -cdslib ./cds_libs/fifo_memory_in_burst_adapter.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                         -work pcie_ip_bar1_0_limiter                                 -cdslib ./cds_libs/pcie_ip_bar1_0_limiter.cds.lib                                
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                          -work pcie_ip_bar1_0_limiter                                 -cdslib ./cds_libs/pcie_ip_bar1_0_limiter.cds.lib                                
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                  -work pcie_ip_bar1_0_limiter                                 -cdslib ./cds_libs/pcie_ip_bar1_0_limiter.cds.lib                                
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                         -work pcie_ip_bar1_0_limiter                                 -cdslib ./cds_libs/pcie_ip_bar1_0_limiter.cds.lib                                
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_router_011.sv"                            -work router_011                                             -cdslib ./cds_libs/router_011.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_router_008.sv"                            -work router_008                                             -cdslib ./cds_libs/router_008.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_router_007.sv"                            -work router_007                                             -cdslib ./cds_libs/router_007.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_router_006.sv"                            -work router_006                                             -cdslib ./cds_libs/router_006.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_router_005.sv"                            -work router_005                                             -cdslib ./cds_libs/router_005.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_router_004.sv"                            -work router_004                                             -cdslib ./cds_libs/router_004.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_router_002.sv"                            -work router_002                                             -cdslib ./cds_libs/router_002.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_router_001.sv"                            -work router_001                                             -cdslib ./cds_libs/router_001.cds.lib                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0_router.sv"                                -work router                                                 -cdslib ./cds_libs/router.cds.lib                                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                  -work fifo_memory_in_agent_rsp_fifo                          -cdslib ./cds_libs/fifo_memory_in_agent_rsp_fifo.cds.lib                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                             -work fifo_memory_in_agent                                   -cdslib ./cds_libs/fifo_memory_in_agent.cds.lib                                  
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                      -work fifo_memory_in_agent                                   -cdslib ./cds_libs/fifo_memory_in_agent.cds.lib                                  
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                            -work pcie_ip_bar1_0_agent                                   -cdslib ./cds_libs/pcie_ip_bar1_0_agent.cds.lib                                  
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                        -work fifo_memory_in_translator                              -cdslib ./cds_libs/fifo_memory_in_translator.cds.lib                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                       -work pcie_ip_bar1_0_translator                              -cdslib ./cds_libs/pcie_ip_bar1_0_translator.cds.lib                             
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altpcie_pipe_interface.v"                                                 -work pipe_interface_internal                                -cdslib ./cds_libs/pipe_interface_internal.cds.lib                               
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altpcie_pcie_reconfig_bridge.v"                                           -work pipe_interface_internal                                -cdslib ./cds_libs/pipe_interface_internal.cds.lib                               
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_pcie_hard_ip_reset_controller.v"                                   -work reset_controller_internal                              -cdslib ./cds_libs/reset_controller_internal.cds.lib                             
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altpcie_rs_serdes.v"                                                      -work reset_controller_internal                              -cdslib ./cds_libs/reset_controller_internal.cds.lib                             
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altpcie_pll_100_250.v"                                                    -work reset_controller_internal                              -cdslib ./cds_libs/reset_controller_internal.cds.lib                             
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altpcie_pll_125_250.v"                                                    -work reset_controller_internal                              -cdslib ./cds_libs/reset_controller_internal.cds.lib                             
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_pcie_ip_altgx_internal.vo"                                  -work altgx_internal                                         -cdslib ./cds_libs/altgx_internal.cds.lib                                        
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altpciexpav_stif_app.v"                                                   -work pcie_internal_hip                                      -cdslib ./cds_libs/pcie_internal_hip.cds.lib                                     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altpcie_hip_pipen1b_qsys.v"                                               -work pcie_internal_hip                                      -cdslib ./cds_libs/pcie_internal_hip.cds.lib                                     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu.v"                                                -work cpu                                                    -cdslib ./cds_libs/cpu.cds.lib                                                   
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_debug_slave_sysclk.v"                             -work cpu                                                    -cdslib ./cds_libs/cpu.cds.lib                                                   
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_debug_slave_tck.v"                                -work cpu                                                    -cdslib ./cds_libs/cpu.cds.lib                                                   
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_debug_slave_wrapper.v"                            -work cpu                                                    -cdslib ./cds_libs/cpu.cds.lib                                                   
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_nios2_cpu_test_bench.v"                                     -work cpu                                                    -cdslib ./cds_libs/cpu.cds.lib                                                   
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                                -work rst_controller                                         -cdslib ./cds_libs/rst_controller.cds.lib                                        
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                              -work rst_controller                                         -cdslib ./cds_libs/rst_controller.cds.lib                                        
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_irq_mapper_001.sv"                                          -work irq_mapper_001                                         -cdslib ./cds_libs/irq_mapper_001.cds.lib                                        
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/de2i_150_qsys_irq_mapper.sv"                                              -work irq_mapper                                             -cdslib ./cds_libs/irq_mapper.cds.lib                                            
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_2.v"                                        -work mm_interconnect_2                                      -cdslib ./cds_libs/mm_interconnect_2.cds.lib                                     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_1.v"                                        -work mm_interconnect_1                                      -cdslib ./cds_libs/mm_interconnect_1.cds.lib                                     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_mm_interconnect_0.v"                                        -work mm_interconnect_0                                      -cdslib ./cds_libs/mm_interconnect_0.cds.lib                                     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_sgdma.v"                                                    -work sgdma                                                  -cdslib ./cds_libs/sgdma.cds.lib                                                 
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_pcie_ip.v"                                                  -work pcie_ip                                                -cdslib ./cds_libs/pcie_ip.cds.lib                                               
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_onchip_memory.v"                                            -work onchip_memory                                          -cdslib ./cds_libs/onchip_memory.cds.lib                                         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_nios2.v"                                                    -work nios2                                                  -cdslib ./cds_libs/nios2.cds.lib                                                 
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_led.v"                                                      -work led                                                    -cdslib ./cds_libs/led.cds.lib                                                   
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_fifo_memory.v"                                              -work fifo_memory                                            -cdslib ./cds_libs/fifo_memory.cds.lib                                           
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/de2i_150_qsys_button.v"                                                   -work button                                                 -cdslib ./cds_libs/button.cds.lib                                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/de2i_150_qsys.v"                                                                                                                                                                                                                   
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  export GENERIC_PARAM_COMPAT_CHECK=1
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
