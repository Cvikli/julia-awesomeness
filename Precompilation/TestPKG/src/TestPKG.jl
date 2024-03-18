module TestPKG

init(t::Type{T}, a, b) where T = throw("Unimplemented init(...)")
postprocess(t::T)      where T = throw("Unimplemented postprocess(...)")

load(t::Type{T}, a, b) where T = begin 
	obj = init(t, a, b)
	postprocess(obj)
end

end # module TestPKG
