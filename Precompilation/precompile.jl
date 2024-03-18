@info "Precompile.jl is running!"

using Revise
includet("../agei/main.includes.jl")
# using Distributed
module Precompile
# using Formatting
# using EllipsisNotation
# using Revise
# includet("../agei/includes.jl")
# using ..Amoba: full_train
# using ..Boilerplate: sizes, @sizes, @typeof, map_array, mapi
# using ..PrmsContainer
# using ..HwAllocator
# using ..NumericalDiff
# using ..KnowledgeNetwork
# using ..GraphHelpers: get_graph_gradvalue, graph_apply_transform, compress!
# using ..Transformations: init_transformations, get_topk_actions
# using ..GraphPipe: graph_ref
# using ..AmobaHelpers: ScoresSummary, print_stats, get_best_graph_data, adjust_task_count


function ownershipchaining() 
	include("../agei/main.code.jl")
	# data_prefix="../agei/_1_datasets/"
	# grap_prefix="../agei/_2_graphsets/"
	# known_transformations, ACTION_SPACE, _ = init_transformations(:RNN, grap_prefix)
	
	# @time data = io_pipe("crypto_data/crypto.0.jld2", train_ratio=1.0, prefix=data_prefix)
	# @time d_graph, d_graph_save = graph_ref((data_graph_name="crypto_graph/initial.0.json",), prefix=grap_prefix)
	
	# @time last_d_loss, last_other, d_params, d_opt, d_stat = full_train(d_graph, data, verbose = 10, epoch=20)
	# # @info format("Initial loss: {:.3f}", last_d_loss)
	# n_graph = KnowledgeNetwork.GraphNetwork()
	# @time network_data = init_dataset(KnowledgeNetwork.n_fake_data(last_other)...; train_ratio=0.8f0)
	# @time n_loss, _, n_params, n_opt, n_stat = full_train(n_graph, network_data, verbose = false, epoch = 5)
end
ownershipchaining()
# precompile(ownershipchaining, ())

# module BackedgeDemo
# double(x::Real) = 2x
# calldouble(container) = double(container[1])
# calldouble2(container) = calldouble(container)

# precompile(calldouble2, (Vector{Float32},))
# precompile(calldouble2, (Vector{Float64},))
# precompile(calldouble2, (Vector{AbstractFloat},))
# end
end
@info "Precompile.jl finished running!"