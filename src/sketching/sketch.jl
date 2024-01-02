#=
Author: Cooper Simpson

Sketching operators.
=#

#=
=#
abstract type Sketch{T} <: AbstractMatrix{T} end

#=
=#
function rademacher_sketch(d1::I, d2::I) where {I<:Integer}
    error("Not Implemented")
end

#=
=#
function uniform_sketch(d1::I, d2::I) where {I<:Integer}
    error("Not Implemented")    
end

#=
=#
function gaussian_sketch(d1::I, d2::I) where {I<:Integer}
    n = max(d1, d2) #get larger dimension

    return (1/sqrt(n))*randn(d1,d2)
end

#=
=#
function haar_sketch(d1::I, d2::I) where {I<:Integer}
    error("Not Implemented")
end