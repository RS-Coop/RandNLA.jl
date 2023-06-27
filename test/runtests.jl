#=
Author: Cooper Simpson

RandNLA tests, specific tests runnable with Pkg.test(test_args=["target"])
=#
using Test
using RandNLA

if isempty(ARGS) || "all" in ARGS
    run_all = true
else
    run_all = false
end

include("")
