#=
Author: Cooper Simpson

Nystrom approximation

References:
    https://arxiv.org/pdf/2302.11474.pdf
    https://proceedings.neurips.cc/paper/2017/file/4558dbb6f6f8bb2e16d03b85bde76e2c-Paper.pdf
    https://arxiv.org/abs/2212.01127
=#

#=
Nystrom approximation
=#
struct Nystrom{T} <: Factorization{T}
    V::Matrix{T}
    λ::Vector{T}
end

#=

=#
Base.size(A::Nystrom) = (size(A.V,1), size(A.V,1))
Base.adjoint(A::Nystrom) = A
LinearAlgebra.issymmetric(A::Nystrom) = true

function Base.Matrix(A::Nystrom)
    return A.V*Diagonal(A.λ)*A.V'
end

#=
Compute Nystrom approximation of a matrix.

Input:
    A :: Symmetric matrix
    k :: maximum rank
    s :: oversampling factor
=#
function nystrom(A::AbstractMatrix{T}, k::I, s::I=0; check::Bool=false) where {T<:Real, I<:Integer}
    
    #check psd and get size
    check && check_psd(A)
    n = size(A, 1)

    #NOTE: This could be an arbitrary sketch
    S = gaussian_sketch(n, k+s) #get sketching operator

    Y = A*S #compute sketch

    γ = sqrt(n)*eps(T)*norm(Y) #compute regularization
    
    Y .+= γ*S #regularize

    R = cholesky(S'*Y).U
    B = Y*inv(R')

    V, λ, W = svd(B)
    r = min(k, findfirst(x->x<=ν, λ))

    return Nystrom(V[:,:r], λ[:r])
end