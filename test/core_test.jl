using CIM
test_files_folder = joinpath(@__DIR__, "CIM_files", "CGMES_v2.4.15_MiniGridTestConfiguration_BaseCase_v3")
@show test_files_folder
EQ_file = CIM.import_file(joinpath(test_files_folder, "MiniGridTestConfiguration_BC_EQ_v3.0.0.xml"))
@test length(EQ_file) == 233
