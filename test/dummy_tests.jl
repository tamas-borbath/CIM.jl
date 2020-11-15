using PowerMarketAdeq
using Test

@testset "Dummy test" begin
    @test PowerMarketAdeq.dummy_func(2,1) == 5
    @test PowerMarketAdeq.dummy_func(3,1) == 7
end
