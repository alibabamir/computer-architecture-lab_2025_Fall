
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name coprator -dir "C:/Users/Lenovo/Desktop/H_B/coprator/planAhead_run_2" -part xc3s400pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Lenovo/Desktop/H_B/coprator/Comparator4bit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Lenovo/Desktop/H_B/coprator} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Comparator4bit.ucf" [current_fileset -constrset]
add_files [list {Comparator4bit.ucf}] -fileset [get_property constrset [current_run]]
link_design
