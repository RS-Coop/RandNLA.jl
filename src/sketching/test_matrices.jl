#=
Author: Cooper Simpson

Explicit test matrices for sketching.
=#

###################
#Dense
###################

#=
Standard normal random matrix.

Input:
    d1 :: dimension 1
    d2 :: dimension 2
=#
function gaussian(d1::I, d2::I) where {I<:Integer}
    n = max(d1, d2) #get larger dimension

    return (1/sqrt(n))*randn(d1,d2)
end

#=
Random +-1 matrix.

Input:
    d1 :: dimension 1
    d2 :: dimension 2
=#
function rademacher(d1::I, d2::I) where {I<:Integer}
    error("Not Implemented")
end

#=
Random uniform [-1,1] matrix.

Input:
    d1 :: dimension 1
    d2 :: dimension 2
=#
function uniform(d1::I, d2::I) where {I<:Integer}
    error("Not Implemented")    
end

#=
Random row/column orthonormal matrix.

Input:
    d1 :: dimension 1
    d2 :: dimension 2
=#
function haar(d1::I, d2::I) where {I<:Integer}
    error("Not Implemented")
end

###################
#Sparse
###################