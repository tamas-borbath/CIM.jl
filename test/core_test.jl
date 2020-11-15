import CIM
test_files_folder = joinpath(@__DIR__, "CIM_files", "CGMES_v2.4.15_MiniGridTestConfiguration_BaseCase_v3")
@show test_files_folder
EQ_file = CIM.PyCIM.import_file(joinpath(test_files_folder, "MiniGridTestConfiguration_BC_EQ_v3.0.0.xml"))
#SSH_file = CIM.PyCIM.import_file(joinpath(test_files_folder, "MiniGridTestConfiguration_BC_SSH_v3.0.0.xml"))
@test length(EQ_file) == 233

EQ_file = CIM.CIMpy.import_file(joinpath(test_files_folder, "MiniGridTestConfiguration_BC_EQ_v3.0.0.xml"))
@test length(EQ_file["topology"]) == 238



merged_file = CIM.CIMpy.import_file(joinpath.(test_files_folder, readdir(test_files_folder)))
@test length(merged_file["topology"]) == 436