source ./create_project.tcl

launch_runs synth_1
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
write_hw_platform -fixed -include_bit -force -file ./fpgadrv_wrapper.xsa
validate_hw_platform -verbose ./fpgadrv_wrapper.xsa
