abstract type SubstitutionModel end


const SM = SubstitutionModel


"""
`NucleicAcidSubstitutionModel` is an abstract type that contains all models
describing a substitution process impacting biological sequences of `DNA` or
`RNA` with continous time Markov models.
"""
abstract type NucleicAcidSubstitutionModel <: SubstitutionModel end


const NASM = NucleicAcidSubstitutionModel


const Qmatrix = SMatrix{4, 4, Real}


const Pmatrix = SMatrix{4, 4, Real}


function Base.convert(::Type{T}, θ::F...; safe::Bool=true) where {T <: NASM, F <: Real}
  return T(θ..., safe)
end


function Base.convert(::Type{T}, θ_vec::A; safe::Bool=true) where {T <: NASM, A <: AbstractArray}
  return T(θ_vec, safe)
end


function Base.convert(::Type{T}, θ_vec::A, π_vec::A; safe::Bool=true) where {T <: NASM, A <: AbstractArray}
  return T(θ_vec, π_vec, safe)
end
