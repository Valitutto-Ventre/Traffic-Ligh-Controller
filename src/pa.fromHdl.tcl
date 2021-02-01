
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name EsameOK -dir "C:/Users/martu/Workspace/ISE/EsameOK/planAhead_run_1" -part xc3s50vq100-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Controller.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Controller.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Controller $srcset
add_files [list {Controller.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s50vq100-4
