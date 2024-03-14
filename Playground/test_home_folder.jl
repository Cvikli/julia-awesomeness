
foo(x) = length(x)+1

# ENV["HOME"] = "/home/master/repo/julia-awesomeness"
# ENV["HOME"] = "/home"
ENV["CDPATH"] = "/home/master/repo/julia-awesomeness"

foo("dfsd")
foo(:bar)
