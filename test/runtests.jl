using SafeTestsets

@safetestset "Dummy testing" begin include("dummy_tests.jl") end
@safetestset "Core" begin include("core_test.jl") end