
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name rippl_adder -dir "C:/Users/Lenovo/Desktop/H_B/rippl_adder/planAhead_run_3" -part xc3s400pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Lenovo/Desktop/H_B/rippl_adder/Ripple_Carry_Adder_4bit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Lenovo/Desktop/H_B/rippl_adder} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Ripple_Carry_Adder_4bit.ucf" [current_fileset -constrset]
add_files [list {Ripple_Carry_Adder_4bit.ucf}] -fileset [get_property constrset [current_run]]
link_design
