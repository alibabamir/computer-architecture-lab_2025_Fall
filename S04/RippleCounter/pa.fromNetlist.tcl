
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name RippleCounter -dir "/home/ise/VM/computer-architecture-lab_2025_Fall/S04/RippleCounter/planAhead_run_3" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/VM/computer-architecture-lab_2025_Fall/S04/RippleCounter/ripple_counter_tff.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/VM/computer-architecture-lab_2025_Fall/S04/RippleCounter} }
set_property target_constrs_file "ripple_counter_tff.ucf" [current_fileset -constrset]
add_files [list {ripple_counter_tff.ucf}] -fileset [get_property constrset [current_run]]
link_design
