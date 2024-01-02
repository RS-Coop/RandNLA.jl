#=
Author: Cooper Simpson

Randomized numerical linear algebra package.
=#
module RandNLA

    #=
    Setup
    =#
    using Random
    using LinearAlgebra

    include("sketching/sketching.jl")
    include("factorizations/factorizations.jl")

    #=
    If optional packages are loaded then export compatible functions.
    =#
    function __init__()

    end

end #module
       