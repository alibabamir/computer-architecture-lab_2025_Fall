
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name S05 -dir "C:/Users/Lenovo/Desktop/H_B/S05/planAhead_run_4" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Lenovo/Desktop/H_B/S05/booth_multiplier.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Lenovo/Desktop/H_B/S05} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "CarrySaveMultiplier4bit.ucf" [current_fileset -constrset]
add_files [list {CarrySaveMultiplier4bit.ucf}] -fileset [get_property constrset [current_run]]
link_design
