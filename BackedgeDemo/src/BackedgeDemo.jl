module BackedgeDemo

double(x::Real) = 2x
calldouble(container) = double(container[1])
calldouble2(container) = calldouble(container)

precompile(calldouble2, (Vector{Float32},))
precompile(calldouble2, (Vector{Float64},))
@show precompile(calldouble2, (Vector{AbstractFloat},))

struct SCDType end
@show precompile(push!, (Vector{SCDType}, SCDType))
dopush() = push!(SCDType[], SCDType())
@show precompile(dopush, ())

export SCDType

end
