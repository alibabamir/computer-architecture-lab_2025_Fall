
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name csaadder -dir "C:/Users/Lenovo/Desktop/H_B/csaadder/planAhead_run_2" -part xc3s400pq208-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "csla4.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {full_adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rca2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {mux2_vec2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {mux2_bit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {csla_block.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {csla4.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top csla4 $srcset
add_files [list {csla4.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-4
