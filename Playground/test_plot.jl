#%%
using Revise
"Loaded"
#%%
"I can't run this CELL due to some revise crash?"
#%%
"wtf"
#%%


using MethodAnalysis
include("precompile.jl")
using .Precompile
metprint(met) =  println(methodinstances(met))
# methodinstance(Precompile.init_transformations, (Symbol, String))
# methodinstance(Precompile.io_pipe, (String, Symbol, String, String))

# metprint(Precompile.double)
metprint(Precompile.init_transformations)
metprint(Precompile.io_pipe)
metprint(Precompile.graph_ref)
metprint(Precompile.full_train)
metprint(Precompile.train_batch)
metprint(Precompile.init_dataset)
# grap_prefix="../agei/_2_graphsets/"
# @time data = Precompile.io_pipe("crypto_data/crypto.0.jld2", train_ratio=1.0, prefix="../agei/_1_datasets/")


#%%
using Random
@show "ok"

#%%
start=time(); using Zygote; time()-start

#%%

@edit run(`echo test`)

#%%
okk="testtet"*"re"

cmd = """ok="testtet"*"re";println("$okk" * "haha")"""
@show cmd
cmd = @sprintf "'%s'" cmd
@show cmd
@show `julia -e $(cmd[2:end-1])`
run(`julia -e $(cmd[2:end-1])`)
#%%
precompileable_pkgs = [:Revise, :PackageCompiler]
cmd="""using PackageCompiler; create_sysimage($precompileable_pkgs; replace_default = false, sysimage_path="JuliaPreSysimageOpt3.so")"""
using Printf
cmd = @sprintf "'%s'" cmd
run(`julia -JJuliaPreSysimageOpt1.so -e  'println("TEST")'`)
