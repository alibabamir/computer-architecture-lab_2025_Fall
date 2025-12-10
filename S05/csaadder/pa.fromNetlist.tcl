
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name csaadder -dir "/home/ise/VM/computer-architecture-lab_2025_Fall/S05/csaadder/planAhead_run_3" -part xc3s400pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/VM/computer-architecture-lab_2025_Fall/S05/csaadder/csla4.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/VM/computer-architecture-lab_2025_Fall/S05/csaadder} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "csla4.ucf" [current_fileset -constrset]
add_files [list {csla4.ucf}] -fileset [get_property constrset [current_run]]
link_design
