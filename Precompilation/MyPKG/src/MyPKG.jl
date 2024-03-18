module MyPKG

using TestPKG
using Boilerplate

mutable struct MyStruct
	q::Int
	w::Float32
end

TestPKG.init(t::Type{MyStruct}, a,b) = MyStruct(a,b)
TestPKG.postprocess(t::MyStruct)     = @show t.q+t.w

__init__() = begin
end

end # module MyPKG
