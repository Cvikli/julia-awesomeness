## list the functions which you want to get precompiled:
# using CuArrays

using BenchmarkTools
BenchmarkTools.DEFAULT_PARAMETERS.seconds = 1.0

using LinearAlgebra
@show BLAS.vendor()
# ] add https://github.com/JuliaComputing/MKL.jl
# ] build MKL

# julia --trace-compile=stderr
# time julia --trace-compile=stderr -E 'print("Julia $(VERSION) with $(length(Base.loaded_modules)) module");""'
__A = randn(Float32, 2, 2, 2)
__A2 = randn(Float32, 2, 2)
__A2 * __A2
using Flux
softmax(__A2)
_f_gradtester(x) = sum(x .^ 2)
gradient(_f_gradtester, __A2)

import CUDA
import Distributed
import Revise
import Memoize
import JSON2
# for prec_file in readdir("precompile")
# 	include("precompile/" * prec_file)
# end

import Logging
import DiffRules
import ChainRulesCore
import Serialization
import Sockets
import OrderedCollections
import MacroTools
import Random

relpath = "../agei/"
# Amoba initi times.
# include("precompile/userimg_Images.jl")
# include("precompile/precompile_Base.jl")
# include("precompile/precompile_Zygote.jl")
# include("precompile/precompile_Flux.jl")
# include("precompile/precompile_NNlib.jl")
# include("precompile/precompile_VSCodeServer.jl")
# include("precompile/precompile_Distributed.jl")
# include("precompile/precompile_Statistics.jl")
# include("precompile/precompile_SparseArrays.jl")
# include("precompile/precompile_LinearAlgebra.jl")
# include("precompile/precompile_JuliaInterpreter.jl")
# include("precompile/precompile_IRTools.jl")
# include("precompile/precompile_Main.jl")
# using .HwAllocator
# using .PrmsContainer
# using .GraphObjects
# using .Boilerplate
# using .Operations
# using .GraphHelpers
# using .Ctx
# using .Storage
# using .GraphPipe
# using .AmobaHelpers

# module Transformations
# function init_transformations()
#   return nothing, 2, nothing
# end
# function get_topk_actions(selected_indices, a_logits, k, mutation_ratio = 0.3)
#   return nothing, nothing
# end
# end
# using .KnowledgeNetwork
# using .Amoba
# # @time include("./precompile_trace.jl")

# function fake_data()
#   batchsize, day_num, timesteps = 90, 3, 60
#   Y = [zeros(Float32, batchsize, day_num, 1) for _ in 1:timesteps], [zeros(Float32, batchsize, day_num, 1) for _ in 1:timesteps]
#   Tuple([randn(Float32, batchsize, day_num, 11) for _ in 1:timesteps]), Y, [zeros(Float32, batchsize, day_num, 1, 1)]
# end
# fake_graph = GraphHelpers.GraphRaw(
#   true,
#   "mse",
#   1,
#   [[0, 2], [1, 3], [2, 3]],
#   6,
# 	[[0, "Input", (index = 0, slicer = [nothing, nothing, [0, 1]])], 
# 	 [1, "Input", (index = 0, slicer = [nothing, nothing, [1, 2]])], 
# 	 [2, "Recurrent"], [3, "Output"]],
# )
# graph = GraphHelpers.convert2Graph(fake_graph)
# _, params, opt = Amoba.init(graph, fake_data())
# @time Amoba.train(1, graph, fake_data, params, opt; verbose = false);

using Plots
plotly()