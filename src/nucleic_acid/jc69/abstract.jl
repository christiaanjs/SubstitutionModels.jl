abstract type JC69 <: NASM end


P(mod::JC69, t::Array{Real}) = [P(mod, i) for i in t]
