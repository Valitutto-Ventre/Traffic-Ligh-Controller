
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name EsameOK -dir "C:/Users/martu/Workspace/ISE/EsameOK/planAhead_run_3" -part xc3s50vq100-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/martu/Workspace/ISE/EsameOK/Controller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/martu/Workspace/ISE/EsameOK} }
set_property target_constrs_file "Controller.ucf" [current_fileset -constrset]
add_files [list {Controller.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/martu/Workspace/ISE/EsameOK/Controller.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/martu/Workspace/ISE/EsameOK/Controller.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/martu/Workspace/ISE/EsameOK/Controller.twx\": $eInfo"
}
