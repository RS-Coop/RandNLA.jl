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

include("sketching/sketch.jl")
include("decompositions/nystrom.jl")
include("decompositions/svd.jl")
include("decompositions/id.jl")
include("decompositions/id.jl")

#=
If optional packages are loaded then export compatible functions.
=#
function __init__()

end

end #module
       