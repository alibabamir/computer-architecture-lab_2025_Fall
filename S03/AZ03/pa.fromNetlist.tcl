
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name AZ03 -dir "/home/ise/computer-architecture-lab_2025_Fall/AZ03/planAhead_run_4" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/computer-architecture-lab_2025_Fall/AZ03/t_ff_async_reset.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/computer-architecture-lab_2025_Fall/AZ03} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "d_ff_async_reset.ucf" [current_fileset -constrset]
add_files [list {d_ff_async_reset.ucf}] -fileset [get_property constrset [current_run]]
link_design
