using Performance
using Test

<<<<<<< HEAD
ntests_finished = 2   # increment this counter to run the next set of tests
=======
ntests_finished = 1   # increment this counter to run the next set of tests
>>>>>>> 84ad0e0f34cda22b5d5dd205678d9a1dc15735cf

@testset "Performance.jl" begin
    ntests = ntests_finished
    if ntests > 0
        ntests -= 1
        include("globals.jl")
    end
    if ntests > 0
        ntests -= 1
        include("arrays.jl")
    end
    if ntests > 0
        ntests -= 1
        include("structs.jl")
    end
    if ntests > 0
        ntests -= 1
        include("type_abuse.jl")
    end
    if ntests > 0
        ntests -= 1
        include("algorithm_order.jl")
    end
end
