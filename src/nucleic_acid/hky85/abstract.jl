abstract type HKY85 <: NASM end


const _πA(mod::HKY85) = mod.πA
const _πC(mod::HKY85) = mod.πC
const _πG(mod::HKY85) = mod.πG
const _πT(mod::HKY85) = mod.πT


function P(mod::HKY85, t::Array{Real})
  return [P(mod, i) for i in t]
end
