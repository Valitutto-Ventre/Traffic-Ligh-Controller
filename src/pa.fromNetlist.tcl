
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name EsameOK -dir "C:/Users/Andrea Valitutto/Downloads/EsameOK-20180207T103503Z-001/EsameOK/planAhead_run_1" -part xc3s50vq100-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Andrea Valitutto/Downloads/EsameOK-20180207T103503Z-001/EsameOK/Controller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Andrea Valitutto/Downloads/EsameOK-20180207T103503Z-001/EsameOK} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Controller.ucf" [current_fileset -constrset]
add_files [list {Controller.ucf}] -fileset [get_property constrset [current_run]]
link_design
