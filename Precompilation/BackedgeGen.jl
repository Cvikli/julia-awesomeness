using Pkg; Pkg.generate("BackedgeDemo")

open("BackedgeDemo/src/BackedgeDemo.jl", "w") do io
	write(io, """
	module BackedgeDemo

	double(x::Real) = 2x
	calldouble(container) = double(container[1])
	calldouble2(container) = calldouble(container)

	precompile(calldouble2, (Vector{Float32},))
	precompile(calldouble2, (Vector{Float64},))
	precompile(calldouble2, (Vector{AbstractFloat},))

	end
	""")
end
#%%
using Revise
push!(LOAD_PATH, "BackedgeDemo/")
#%%
using RandomFile
triple(2)
#%%
using BackedgeDemo
using MethodAnalysis
methodinstances(BackedgeDemo.double)
calldouble2(1)
#%%
using MethodAnalysis
mi = methodinstance(*, (Int, Float32))
@show mi
mi.def
#%%
using MethodAnalysis
using BackedgeDemo: dopush
# methodinstances(push!, (Vector{SCDType}, SCDType))
methodinstances(dopush)

