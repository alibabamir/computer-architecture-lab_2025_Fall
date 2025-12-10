
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name rippl_adder -dir "C:/Users/Lenovo/Desktop/H_B/rippl_adder/planAhead_run_1" -part xc3s400pq208-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Ripple_Carry_Adder_4bit.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Half_Adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Full_Adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Ripple_Carry_Adder_4bit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Ripple_Carry_Adder_4bit $srcset
add_files [list {Ripple_Carry_Adder_4bit.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-4
