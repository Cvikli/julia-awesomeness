#%%
using Revise
using SnoopCompile

cd(joinpath(pkgdir(SnoopCompile), "examples"))

include(joinpath(pkgdir(SnoopCompile), "examples/OptimizeMe.jl"))

tinf = @snoopi_deep OptimizeMe.main()

ttot, pcs = SnoopCompile.parcel(tinf);




