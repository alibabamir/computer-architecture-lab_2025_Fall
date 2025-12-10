
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name CLA_bit -dir "C:/Users/Lenovo/Desktop/H_B/CLA_bit/planAhead_run_2" -part xc3s400pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Lenovo/Desktop/H_B/CLA_bit/CLA_4bit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Lenovo/Desktop/H_B/CLA_bit} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "CLA_4bit.ucf" [current_fileset -constrset]
add_files [list {CLA_4bit.ucf}] -fileset [get_property constrset [current_run]]
link_design
