precompile(Tuple{Type{Logging.ConsoleLogger}, Base.IOStream})
precompile(Tuple{Type{REPL.Terminals.TTYTerminal}, String, Base.TTY, Base.TTY, Base.IOStream})
precompile(Tuple{typeof(Base.push!), Array{Function, 1}, Function})
precompile(Tuple{typeof(Base.string), Symbol, Symbol, Vararg{Any, N} where N})
precompile(Tuple{typeof(Base.string), Symbol, Int32, Vararg{Any, N} where N})
precompile(Tuple{getfield(ChainRulesCore, Symbol("#@scalar_rule")), LineNumberNode, Module, Any, Any, Vararg{Any, N} where N})
precompile(Tuple{typeof(Base.any), Function, Array{Any, 1}})
precompile(Tuple{getfield(Base, Symbol("#foldl##kw")), NamedTuple{(:init,), Tuple{Expr}}, typeof(Base.foldl), Function, Array{Any, 1}})
precompile(Tuple{typeof(Base.Broadcast.__dot__), Function})
precompile(Tuple{typeof(Base.collect_to_with_first!), Array{typeof(Base.muladd), 1}, Function, Base.Generator{Array{Any, 1}, typeof(Base.Broadcast.__dot__)}, Int64})
precompile(Tuple{typeof(Base.Broadcast.broadcasted), Function, Array{Expr, 1}})
precompile(Tuple{typeof(Base.setup_stdio), Base.IOStream, Bool})
precompile(Tuple{Type{Base.Dict{Symbol, Any}}, Base.Pair{Symbol, Symbol}, Vararg{Base.Pair{A, B} where B where A, N} where N})
precompile(Tuple{typeof(Serialization.serialize), Distributed.ClusterSerializer{Sockets.TCPSocket}, Any})
precompile(Tuple{getfield(Distributed, Symbol("#@everywhere")), LineNumberNode, Module, Any})
precompile(Tuple{getfield(Distributed, Symbol("#@everywhere")), LineNumberNode, Module, Any, Any})
precompile(Tuple{typeof(Distributed.extract_imports), Expr})
precompile(Tuple{typeof(Distributed.remotecall_eval), Module, Array{Int64, 1}, Expr})
precompile(Tuple{getfield(Distributed, Symbol("##remotecall#141")), Base.Iterators.Pairs{Union{}, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}, typeof(Distributed.remotecall), Function, Int64, Module, Vararg{Any, N} where N})
precompile(Tuple{typeof(Distributed.remotecall), Function, Distributed.Worker, Module, Vararg{Any, N} where N})
precompile(Tuple{getfield(Distributed, Symbol("##remotecall#140")), Base.Iterators.Pairs{Union{}, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}, typeof(Distributed.remotecall), Function, Distributed.Worker, Module, Vararg{Any, N} where N})
precompile(Tuple{typeof(Distributed.serialize_msg), Distributed.ClusterSerializer{Sockets.TCPSocket}, Distributed.CallMsg{:call}})
precompile(Tuple{typeof(Serialization.serialize), Distributed.ClusterSerializer{Sockets.TCPSocket}, Tuple{Module, Expr}})
precompile(Tuple{typeof(Base.wait), Distributed.Future})
precompile(Tuple{getfield(Distributed, Symbol("##remotecall_fetch#146")), Base.Iterators.Pairs{Union{}, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}, typeof(Distributed.remotecall_fetch), Function, Int64, Distributed.RRID, Vararg{Any, N} where N})
precompile(Tuple{typeof(Distributed.remotecall_fetch), Function, Distributed.Worker, Distributed.RRID, Vararg{Any, N} where N})
precompile(Tuple{getfield(Distributed, Symbol("##remotecall_fetch#143")), Base.Iterators.Pairs{Union{}, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}, typeof(Distributed.remotecall_fetch), Function, Distributed.Worker, Distributed.RRID, Vararg{Any, N} where N})
precompile(Tuple{typeof(Serialization.serialize), Distributed.ClusterSerializer{Sockets.TCPSocket}, Tuple{Distributed.RRID, Int64}})
precompile(Tuple{getfield(Distributed, Symbol("#155#156")){Module, Expr}})
precompile(Tuple{typeof(Base.put!), Distributed.RemoteValue, Nothing})
precompile(Tuple{typeof(Base.put!), Base.Channel{Any}, Nothing})
precompile(Tuple{typeof(Base.setindex!), OrderedCollections.OrderedDict{Revise.RelocatableExpr, Union{Nothing, Array{Any, 1}}}, Nothing, Revise.RelocatableExpr})
precompile(Tuple{typeof(Base.:(+)), UInt64, UInt64})
precompile(Tuple{typeof(Base.reinterpret), Type{Int64}, UInt64})
precompile(Tuple{typeof(OrderedCollections._setindex!), OrderedCollections.OrderedDict{Revise.RelocatableExpr, Union{Nothing, Array{Any, 1}}}, Nothing, Revise.RelocatableExpr, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{String, Int64}, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{String, Int64}, Int64, Int64})
precompile(Tuple{typeof(Base.hash), String, UInt64})
precompile(Tuple{typeof(Base.:(>)), Int32, Int64})
precompile(Tuple{typeof(Base.getindex), Array{Revise.RelocatableExpr, 1}, Int32})
precompile(Tuple{typeof(Base.isequal), Revise.RelocatableExpr, Revise.RelocatableExpr})
precompile(Tuple{Type{Base.Dict{Union{GlobalRef, Symbol}, Nothing}}})
precompile(Tuple{typeof(Base.copy), Array{Int32, 1}})
precompile(Tuple{typeof(Base.collect), Base.Generator{Array{Array{Int64, 1}, 1}, typeof(Base.copy)}})
precompile(Tuple{typeof(Base.setindex!), OrderedCollections.OrderedDict{Revise.RelocatableExpr, Union{Nothing, Array{Any, 1}}}, Array{Any, 1}, Revise.RelocatableExpr})
precompile(Tuple{typeof(Distributed.finalize_ref), Distributed.Future})
precompile(Tuple{typeof(Base.isequal), Distributed.Future, Distributed.Future})
precompile(Tuple{getfield(Base, Symbol("#501#502")){Base.WeakKeyDict{Distributed.AbstractRemoteRef, Nothing}}, Distributed.Future})
precompile(Tuple{typeof(Base.oftype), Int64, Int32})
precompile(Tuple{typeof(Base.getproperty), Core.SSAValue, Symbol})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, Symbol})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, String})
precompile(Tuple{typeof(Base.getindex), Array{Any, 1}, UInt64})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, QuoteNode})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, Function})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, JuliaInterpreter.SSAValue})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, Type{T} where T})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, LineNumberNode})
precompile(Tuple{typeof(Base.foreach), typeof(JuliaInterpreter.disable), Array{JuliaInterpreter.BreakpointRef, 1}})
precompile(Tuple{typeof(Base.convert), Type{Union{Nothing, JuliaInterpreter.Frame}}, JuliaInterpreter.Frame})
precompile(Tuple{typeof(JuliaInterpreter.is_quotenode), Any, Any})
precompile(Tuple{typeof(Base.:(==)), Function, Function})
precompile(Tuple{getfield(JuliaInterpreter, Symbol("#prepare_framecode##kw")), NamedTuple{(:enter_generated,), Tuple{Bool}}, typeof(JuliaInterpreter.prepare_framecode), Method, Type{T} where T})
precompile(Tuple{typeof(Base.getproperty), Core.SlotNumber, Symbol})
precompile(Tuple{Type{JuliaInterpreter.DispatchableMethod}, Nothing, JuliaInterpreter.FrameInstance, Type{T} where T})
precompile(Tuple{typeof(Base.setindex!), Base.IdDict{Type, Union{Base.Missing, Tuple{LineNumberNode, Expr}}}, Any, Any})
precompile(Tuple{typeof(Base.foreach), typeof(JuliaInterpreter.enable), Array{JuliaInterpreter.BreakpointRef, 1}})
precompile(Tuple{typeof(Serialization.serialize), Distributed.ClusterSerializer{Sockets.TCPSocket}, Tuple{Array{Any, 1}}})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{Bool, Int64}, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{Bool, Int64}, Int64, Int64})
precompile(Tuple{typeof(Base.hash), Bool, UInt64})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, Bool})
precompile(Tuple{typeof(Base.Iterators.zip), Core.SimpleVector, Array{Any, 1}})
precompile(Tuple{typeof(Base.Iterators._zip_iterate_all), Tuple{Core.SimpleVector, Array{Any, 1}}, Tuple{Tuple{}, Tuple{}}})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{DataType, JuliaInterpreter.SlotNumber}, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{DataType, JuliaInterpreter.SlotNumber}, Int64, Int64})
precompile(Tuple{typeof(Base.iterate), Base.Iterators.Zip{Tuple{Core.SimpleVector, Array{Any, 1}}}, Tuple{Int64, Int64}})
precompile(Tuple{typeof(Base.get), Base.Dict{Any, Any}, Tuple{QuoteNode, DataType, Core.SimpleVector, Module, Int64}, Nothing})
precompile(Tuple{Type{Base.Generator{I, F} where F where I}, typeof(JuliaInterpreter.parametric_type_to_expr), Core.SimpleVector})
precompile(Tuple{typeof(Base.collect), Base.Generator{Core.SimpleVector, typeof(JuliaInterpreter.parametric_type_to_expr)}})
precompile(Tuple{typeof(JuliaInterpreter.parametric_type_to_expr), Type{T} where T})
precompile(Tuple{typeof(Base._array_for), Type{DataType}, Core.SimpleVector, Base.HasLength})
precompile(Tuple{typeof(Base.collect_to_with_first!), Array{DataType, 1}, Type{T} where T, Base.Generator{Core.SimpleVector, typeof(JuliaInterpreter.parametric_type_to_expr)}, Int64})
precompile(Tuple{typeof(Base.setindex!), Base.Dict{Any, Any}, Function, Tuple{QuoteNode, DataType, Core.SimpleVector, Module, Int64}})
precompile(Tuple{typeof(Base.parentmodule), Function})
precompile(Tuple{typeof(Base.parentmodule), DataType})
precompile(Tuple{typeof(Base.invokelatest), Any, Any})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{Float64, Int64}, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{Float64, Int64}, Int64, Int64})
precompile(Tuple{typeof(Base.hash), Float64, UInt64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{QuoteNode, Int64}, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{QuoteNode, Int64}, Int64, Int64})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, Int64})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, Module})
precompile(Tuple{getfield(Base, Symbol("#@show")), LineNumberNode, Module, Vararg{Any, N} where N})
precompile(Tuple{typeof(Base.sprint), Function, String})
precompile(Tuple{typeof(Base.:(==)), Type{T} where T, Function})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, JuliaInterpreter.SlotNumber})
precompile(Tuple{typeof(Base.invokelatest), Any, Any, Vararg{Any, N} where N})
precompile(Tuple{getfield(Base, Symbol("##invokelatest#1")), Base.Iterators.Pairs{Union{}, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}, typeof(Base.invokelatest), Any, Any, Vararg{Any, N} where N})
precompile(Tuple{typeof(Base.:(==)), Tuple{Symbol, Int64}, Int64})
precompile(Tuple{typeof(Base.mapreduce_impl), typeof(Base.identity), typeof(Base.min), Array{Int64, 1}, Int64, Int64})
precompile(Tuple{typeof(Base.popfirst!), Array{DataType, 1}})
precompile(Tuple{typeof(Base.unsafe_convert), Type{Ptr{Any}}, Array{DataType, 1}})
precompile(Tuple{typeof(Base.setindex_widen_up_to), Array{DataType, 1}, Function, Int64})
precompile(Tuple{typeof(Base.copyto!), Array{Any, 1}, Int64, Array{DataType, 1}, Int64, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{Float32, Int64}, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{Float32, Int64}, Int64, Int64})
precompile(Tuple{typeof(Base.hash), Float32, UInt64})
precompile(Tuple{typeof(Base.isequal), Symbol, Expr})
precompile(Tuple{typeof(Base._array_for), Type{Symbol}, Base.UnitRange{Int64}, Base.HasShape{1}})
precompile(Tuple{typeof(Base.Broadcast._broadcast_getindex_evalf), typeof(Base._views), Function})
precompile(Tuple{Type{Base.Dict{String, Symbol}}, Base.Pair{String, Symbol}, Vararg{Base.Pair{String, Symbol}, N} where N})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, Float64})
precompile(Tuple{typeof(Base.sprint), Function, Symbol})
precompile(Tuple{typeof(Base.hash), Char, UInt64})
precompile(Tuple{typeof(Base.string), String, Float64})
precompile(Tuple{typeof(Base.setindex!), OrderedCollections.OrderedDict{Any, Any}, Float64, Symbol})
precompile(Tuple{Type{Base.Pair{A, B} where B where A}, Symbol, Float64})
precompile(Tuple{typeof(Base.replace_ref_begin_end_!), Int64, Nothing})
precompile(Tuple{getfield(Memoize, Symbol("#@memoize")), LineNumberNode, Module, Vararg{Any, N} where N})
precompile(Tuple{typeof(MacroTools.splitdef), Expr})
precompile(Tuple{typeof(Base.show), Base.GenericIOBuffer{Array{UInt8, 1}}, Expr})
precompile(Tuple{typeof(MacroTools.trymatch), Symbol, Expr})
precompile(Tuple{typeof(MacroTools.gatherwheres), Expr})
precompile(Tuple{typeof(MacroTools.trymatch), MacroTools.OrBind, Symbol})
precompile(Tuple{typeof(MacroTools.match), MacroTools.OrBind, Symbol, Base.Dict{Any, Any}})
precompile(Tuple{typeof(MacroTools.match_inner), MacroTools.OrBind, Symbol, Base.Dict{Any, Any}})
precompile(Tuple{typeof(MacroTools.trymatch), Expr, Symbol})
precompile(Tuple{Type{Base.Pair{A, B} where B where A}, Symbol, Array{Any, 1}})
precompile(Tuple{Type{Base.Dict{K, V} where V where K}, Base.Pair{Symbol, Symbol}, Vararg{Base.Pair{A, B} where B where A, N} where N})
precompile(Tuple{typeof(Base._compute_eltype), Type{Tuple{Base.Pair{Symbol, Symbol}, Base.Pair{Symbol, Array{Any, 1}}, Base.Pair{Symbol, Array{Any, 1}}, Base.Pair{Symbol, Expr}}}})
precompile(Tuple{Type{Base.Dict{K, V} where V where K}, Tuple{Base.Pair{Symbol, Symbol}, Base.Pair{Symbol, Array{Any, 1}}, Base.Pair{Symbol, Array{Any, 1}}, Base.Pair{Symbol, Expr}}})
precompile(Tuple{typeof(Base.empty), Base.Dict{Any, Any}, Type{Symbol}, Type{Symbol}})
precompile(Tuple{typeof(Base.grow_to!), Base.Dict{Symbol, Symbol}, Tuple{Base.Pair{Symbol, Symbol}, Base.Pair{Symbol, Array{Any, 1}}, Base.Pair{Symbol, Array{Any, 1}}, Base.Pair{Symbol, Expr}}, Int64})
precompile(Tuple{typeof(Base.empty), Base.Dict{Symbol, Symbol}, Type{Symbol}, Type{Any}})
precompile(Tuple{typeof(Base.merge!), Base.Dict{Symbol, Any}, Base.Dict{Symbol, Symbol}})
precompile(Tuple{typeof(Base.grow_to!), Base.Dict{Symbol, Any}, Tuple{Base.Pair{Symbol, Symbol}, Base.Pair{Symbol, Array{Any, 1}}, Base.Pair{Symbol, Array{Any, 1}}, Base.Pair{Symbol, Expr}}, Int64})
precompile(Tuple{typeof(Base.setindex!), Base.Dict{Symbol, Any}, Tuple{}, Symbol})
precompile(Tuple{typeof(Base.get), Base.Dict{Symbol, Any}, Symbol, Type{T} where T})
precompile(Tuple{typeof(Base.copy), Base.Dict{Symbol, Any}})
precompile(Tuple{typeof(Base.vcat), Array{Any, 1}, Array{Any, 1}})
precompile(Tuple{typeof(MacroTools.combinedef), Base.Dict{Symbol, Any}})
precompile(Tuple{typeof(MacroTools.block), Expr})
precompile(Tuple{Base.Fix2{typeof(Base.isequal), Symbol}, Base.IdDict{Any, Any}})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{DataType, JuliaInterpreter.SSAValue}, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{DataType, JuliaInterpreter.SSAValue}, Int64, Int64})
precompile(Tuple{typeof(Base.getproperty), JuliaInterpreter.SSAValue, Symbol})
precompile(Tuple{typeof(Base.unique!), Array{Int64, 1}})
precompile(Tuple{Type{Random.MersenneTwister}, Int64})
precompile(Tuple{typeof(Base.isequal), Expr, Symbol})
precompile(Tuple{typeof(Base.__precompile__)})
precompile(Tuple{typeof(Base.isequal), Distributed.RRID, Distributed.RRID})
precompile(Tuple{typeof(Base._uv_hook_close), FileWatching.FileMonitor})
precompile(Tuple{typeof(Base.hashindex), Distributed.RRID, Int64})
precompile(Tuple{typeof(Base.allocatedinline), Type{GraphObjects.Node}})
precompile(Tuple{typeof(Transformations.init_transformations)})
precompile(Tuple{typeof(Base.Filesystem.readdir), String})
precompile(Tuple{typeof(Base.Filesystem.isfile), String})
precompile(Tuple{Type{Storage.FileType}, Base.SubString{String}, Base.SubString{String}, Base.SubString{String}})
precompile(Tuple{typeof(JSON2.read), String})
precompile(Tuple{Type{NamedTuple{(:t_id, :comment, :last_edge_id, :edges, :last_node_id, :nodes), T} where T<:Tuple}, Tuple{Int64, String, Int64, Array{Any, 1}, Int64, Array{Any, 1}}})
precompile(Tuple{typeof(Base.hasfield), Type{NamedTuple{(:t_id, :comment, :last_edge_id, :edges, :last_node_id, :nodes), Tuple{Int64, String, Int64, Array{Any, 1}, Int64, Array{Any, 1}}}}, Symbol})
precompile(Tuple{typeof(Base.getproperty), NamedTuple{(:t_id, :comment, :last_edge_id, :edges, :last_node_id, :nodes), Tuple{Int64, String, Int64, Array{Any, 1}, Int64, Array{Any, 1}}}, Symbol})
precompile(Tuple{Type{GraphHelpers.GraphRaw}, Bool, String, Int64, Array{Any, 1}, Int64, Array{Any, 1}})
precompile(Tuple{Type{NamedTuple{(:nid2index, :nodes, :matrix, :loss_fn, :is_learnable), T} where T<:Tuple}, Tuple{Base.Dict{Int64, Int64}, Array{GraphObjects.Node, 1}, Array{Float64, 2}, String, Bool}})
precompile(Tuple{getfield(Core, Symbol("#Type##kw")), NamedTuple{(:nid2index, :nodes, :matrix, :loss_fn, :is_learnable), Tuple{Base.Dict{Int64, Int64}, Array{GraphObjects.Node, 1}, Array{Float64, 2}, String, Bool}}, Type{GraphHelpers.Graph}})
precompile(Tuple{typeof(Base.getindex), Array{GraphObjects.Node, 1}, Int64})
precompile(Tuple{typeof(Base.setindex!), Array{GraphObjects.Node, 1}, GraphObjects.Node, Int64})
precompile(Tuple{typeof(Base._array_for), Type{Int64}, Array{GraphObjects.Node, 1}, Base.HasShape{1}})
precompile(Tuple{typeof(Base.reducedim_init), Function, typeof(Base.max), Array{Int64, 2}, Int64})
precompile(Tuple{typeof(Base._realtype), Function, Type{T} where T})
precompile(Tuple{typeof(Base.getindex), Array{Int64, 2}, Function, Int64})
precompile(Tuple{typeof(Base.Broadcast.broadcasted), Function, Array{Float64, 1}, Array{Int64, 1}})
precompile(Tuple{typeof(Base._array_for), Type{Bool}, Array{GraphObjects.Node, 1}, Base.HasShape{1}})
precompile(Tuple{typeof(Base.collect_to_with_first!), Array{Bool, 1}, Bool, Base.Generator{Array{GraphObjects.Node, 1}, typeof(Operations.is_state)}, Int64})
precompile(Tuple{typeof(Base.view), Array{Int32, 2}, Function, Array{Bool, 1}})
precompile(Tuple{typeof(Base.Broadcast.broadcasted), Function, Base.BitArray{1}, Array{Bool, 1}})
precompile(Tuple{typeof(Base.Broadcast.broadcasted), Function, Array{Int32, 1}, Array{Int64, 1}})
precompile(Tuple{typeof(Base.Broadcast.broadcasted), Function, Base.BitArray{1}, Base.BitArray{1}})
precompile(Tuple{typeof(Base.setproperty!), GraphHelpers.Graph, Symbol, Int64})
precompile(Tuple{typeof(Base.Broadcast.broadcasted), Function, Base.BitArray{1}, Int64})
precompile(Tuple{typeof(Base.getindex), Base.BitArray{1}, Int64})
precompile(Tuple{typeof(Base.repr), Base.BitArray{1}})
precompile(Tuple{getfield(Base, Symbol("##sprint#355")), Nothing, Int64, typeof(Base.sprint), Function, Base.BitArray{1}})
precompile(Tuple{typeof(Base.show), Base.GenericIOBuffer{Array{UInt8, 1}}, Base.BitArray{1}})
precompile(Tuple{typeof(Base.println), Base.TTY, String, Vararg{String, N} where N})
precompile(Tuple{Type{NamedTuple{(:id, :symbol, :op), T} where T<:Tuple}, Tuple{Int64, Symbol, typeof(Operations.sum_op)}})
precompile(Tuple{getfield(Core, Symbol("#Type##kw")), NamedTuple{(:id, :symbol, :op), Tuple{Int64, Symbol, typeof(Operations.sum_op)}}, Type{GraphObjects.Node}})
precompile(Tuple{typeof(Base.allocatedinline), Type{Real}})
precompile(Tuple{typeof(Base.setindex_widen_up_to), Array{Int64, 1}, Float64, Int64})
precompile(Tuple{typeof(Base.hcat), Array{Real, 1}, Array{Int64, 1}})
precompile(Tuple{getfield(Base, Symbol("#maximum##kw")), NamedTuple{(:dims,), Tuple{Int64}}, typeof(Base.maximum), Array{Real, 2}})
precompile(Tuple{typeof(Base._mapreduce_dim), Function, Function, NamedTuple{(), Tuple{}}, Array{Real, 2}, Int64})
precompile(Tuple{typeof(Base.reducedim_init), Function, typeof(Base.max), Array{Real, 2}, Int64})
precompile(Tuple{getfield(Base, Symbol("##mapfoldl#204")), Base.Iterators.Pairs{Union{}, Union{}, Tuple{}, NamedTuple{(), Tuple{}}}, typeof(Base.mapfoldl), Function, Function, Base.SubArray{Real, 2, Array{Real, 2}, Tuple{Base.OneTo{Int64}, Base.OneTo{Int64}}, false}})
precompile(Tuple{typeof(Base.mapfoldl_impl), typeof(Base.identity), typeof(Base.min), NamedTuple{(), Tuple{}}, Base.SubArray{Real, 2, Array{Real, 2}, Tuple{Base.OneTo{Int64}, Base.OneTo{Int64}}, false}})
precompile(Tuple{Base.BottomRF{typeof(Base.min)}, Int64, Int64})
precompile(Tuple{Base.BottomRF{typeof(Base.min)}, Int64, Float64})
precompile(Tuple{Base.BottomRF{typeof(Base.min)}, Float64, Int64})
precompile(Tuple{typeof(Base.:(!=)), Float64, Float64})
precompile(Tuple{typeof(Base.reducedim_initarray), Array{Real, 2}, Int64, Float64, Type{Real}})
precompile(Tuple{typeof(Base.mapreducedim!), Function, Function, Array{Real, 2}, Array{Real, 2}})
precompile(Tuple{typeof(Base._mapreducedim!), typeof(Base.identity), typeof(Base.max), Array{Real, 2}, Array{Real, 2}})
precompile(Tuple{typeof(Base.max), Float64, Int64})
precompile(Tuple{typeof(Base.convert), Type{Real}, Float64})
precompile(Tuple{typeof(Base.max), Float64, Float64})
precompile(Tuple{typeof(Base.getindex), Array{Real, 2}, Function, Int64})
precompile(Tuple{typeof(Base.Broadcast.broadcasted), Function, Array{Float64, 1}, Array{Real, 1}})
precompile(Tuple{Type{Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Axes, F, Args} where Args<:Tuple where F where Axes}, typeof(Base.:(==)), Tuple{Array{Float64, 1}, Array{Real, 1}}})
precompile(Tuple{typeof(Base.Broadcast.materialize), Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Nothing, typeof(Base.:(==)), Tuple{Array{Float64, 1}, Array{Real, 1}}}})
precompile(Tuple{typeof(Base.similar), Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Tuple{Base.OneTo{Int64}}, typeof(Base.:(==)), Tuple{Base.Broadcast.Extruded{Array{Float64, 1}, Tuple{Bool}, Tuple{Int64}}, Base.Broadcast.Extruded{Array{Real, 1}, Tuple{Bool}, Tuple{Int64}}}}, Type{Bool}})
precompile(Tuple{typeof(Base.Broadcast.copyto_nonleaf!), Base.BitArray{1}, Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Tuple{Base.OneTo{Int64}}, typeof(Base.:(==)), Tuple{Base.Broadcast.Extruded{Array{Float64, 1}, Tuple{Bool}, Tuple{Int64}}, Base.Broadcast.Extruded{Array{Real, 1}, Tuple{Bool}, Tuple{Int64}}}}, Base.OneTo{Int64}, Int64, Int64})
precompile(Tuple{typeof(Base.maybeview), Array{Real, 1}, Array{Bool, 1}})
precompile(Tuple{typeof(Base.Broadcast.materialize!), Base.SubArray{Real, 1, Array{Real, 1}, Tuple{Array{Int64, 1}}, false}, Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{0}, Nothing, typeof(Base.identity), Tuple{Int64}}})
precompile(Tuple{typeof(Base.Broadcast.broadcasted), Function, Array{Int32, 1}, Array{Real, 1}})
precompile(Tuple{Type{Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Axes, F, Args} where Args<:Tuple where F where Axes}, typeof(Base.:(==)), Tuple{Array{Int32, 1}, Array{Real, 1}}})
precompile(Tuple{typeof(Base.Broadcast.materialize), Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Nothing, typeof(Base.:(==)), Tuple{Array{Int32, 1}, Array{Real, 1}}}})
precompile(Tuple{typeof(Base.:(==)), Int32, Float64})
precompile(Tuple{typeof(Base.similar), Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Tuple{Base.OneTo{Int64}}, typeof(Base.:(==)), Tuple{Base.Broadcast.Extruded{Array{Int32, 1}, Tuple{Bool}, Tuple{Int64}}, Base.Broadcast.Extruded{Array{Real, 1}, Tuple{Bool}, Tuple{Int64}}}}, Type{Bool}})
precompile(Tuple{typeof(Base.Broadcast.copyto_nonleaf!), Base.BitArray{1}, Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Tuple{Base.OneTo{Int64}}, typeof(Base.:(==)), Tuple{Base.Broadcast.Extruded{Array{Int32, 1}, Tuple{Bool}, Tuple{Int64}}, Base.Broadcast.Extruded{Array{Real, 1}, Tuple{Bool}, Tuple{Int64}}}}, Base.OneTo{Int64}, Int64, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{Array{Any, 1}, Int64, Array{Int64, 1}}, Int64})
precompile(Tuple{typeof(Base.indexed_iterate), Tuple{Array{Any, 1}, Int64, Array{Int64, 1}}, Int64, Int64})
precompile(Tuple{typeof(Serialization.serialize), Distributed.ClusterSerializer{Sockets.TCPSocket}, Float64})
precompile(Tuple{Type{NamedTuple{(:train_ratio,), T} where T<:Tuple}, Tuple{Float64}})
precompile(Tuple{Type{NamedTuple{(Symbol("1"),), T} where T<:Tuple}, Tuple{String}})
precompile(Tuple{Type{NamedTuple{(:in_description, :out_description, :time_axes, :batched_time_axes, :batch_dims, :ins, :outs, :params), T} where T<:Tuple}, Tuple{Array{Any, 1}, Array{Any, 1}, NamedTuple{(), Tuple{}}, NamedTuple{(), Tuple{}}, NamedTuple{(Symbol("1"),), Tuple{String}}, Array{Any, 1}, Array{Any, 1}, Array{Any, 1}}})
precompile(Tuple{typeof(Base.hasfield), Type{NamedTuple{(:in_description, :out_description, :time_axes, :batched_time_axes, :batch_dims, :ins, :outs, :params), Tuple{Array{Any, 1}, Array{Any, 1}, NamedTuple{(), Tuple{}}, NamedTuple{(), Tuple{}}, NamedTuple{(Symbol("1"),), Tuple{String}}, Array{Any, 1}, Array{Any, 1}, Array{Any, 1}}}}, Symbol})
