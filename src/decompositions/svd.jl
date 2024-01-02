#=
Author: Cooper Simpson

Randomized SVD.
=#

#=
Randomized SVD.
=#
struct RSVD{T} <: Factorization{T}
    U::Matrix{T}
    λ::Vector{T}
    V::Matrix{T}
end

#=

=#
Base.size(A::RSVD) = (size(A.U,1), size(A.V,2))
Base.adjoint(A::RSVD) = RSVD(A.V, A.λ, A.U')
LinearAlgebra.issymmetric(A::RSVD) = false

function Base.Matrix(A::RSVD)
    return A.U*Diagonal(A.λ)*A.V'
end

#=
Compute randomized SVD of a matrix.

Input:
    A :: Matrix
=#
function rsvd(A::AbstractMatrix{T}) where {T<:Real}
    error("Not Implemented")
end