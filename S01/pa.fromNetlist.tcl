
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name S01 -dir "C:/Users/Lenovo/Desktop/H_B/S01/planAhead_run_1" -part xc3s400pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Lenovo/Desktop/H_B/S01/full_adder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Lenovo/Desktop/H_B/S01} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "full_adder.ucf" [current_fileset -constrset]
add_files [list {full_adder.ucf}] -fileset [get_property constrset [current_run]]
link_design
