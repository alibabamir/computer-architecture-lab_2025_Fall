
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name CLA_bit -dir "C:/Users/Lenovo/Desktop/H_B/CLA_bit/planAhead_run_1" -part xc3s400pq208-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "CLA_4bit.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {CLA_4bit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top CLA_4bit $srcset
add_files [list {CLA_4bit.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-4
