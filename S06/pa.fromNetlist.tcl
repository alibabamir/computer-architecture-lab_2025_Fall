
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name S06 -dir "/home/ise/VM/computer-architecture-lab_2025_Fall/S06/planAhead_run_2" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/VM/computer-architecture-lab_2025_Fall/S06/Shift_Register_Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/VM/computer-architecture-lab_2025_Fall/S06} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Shift_Register_Top.ucf" [current_fileset -constrset]
add_files [list {Shift_Register_Top.ucf}] -fileset [get_property constrset [current_run]]
link_design
