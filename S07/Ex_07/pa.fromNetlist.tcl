
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Ex_07 -dir "/home/ise/VM/computer-architecture-lab_2025_Fall/S07/Ex_07/planAhead_run_2" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/VM/computer-architecture-lab_2025_Fall/S07/Ex_07/ram.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/VM/computer-architecture-lab_2025_Fall/S07/Ex_07} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ram.ucf" [current_fileset -constrset]
add_files [list {ram.ucf}] -fileset [get_property constrset [current_run]]
link_design
