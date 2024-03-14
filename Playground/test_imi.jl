
# comment
a = [2]
fn(x) = 2x
fn(x::Float64) = 3x
fn(1f0)
animal(x, y) = (println(typeof(x));fn(x))
@show animal(1f0, 0)
@code_warntype animal(1f0, 0)
# @code_ animal(1f0, 0)

#%%
data=[1]
import CSV
# save(CSV("asdf.csv"), data)
struct JSON
	name
end
save(format::JSON, data) = dump(format.name, jsonserialize(data))
save(JSON("asdf.json"), data)

#%%
# JSON("asdf.json", data).save()

#%%
using Boilerplate
len([23,4])

#%%
using BenchmarkTools
@btime begin
	b = zeros(Float32, 1024,1024)
	b = zeros(Float32, 1024,1024)
end
;
#%%
b = zeros(Float32, 1_000_000)
@time b .* b
@time b .* b
;
#%%
using Distributed
addprocs(2)
#%%
using Formatting
remotecall_fetch(() -> println("asd_"*string(myid())), 2)

#%%
d = [1:10...]
@show d[1]
d .|> fn
map(fn, d)
@everywhere fn(x) = (println(myid());4x)
pmap(fn, d)

#%%
collect(1:10)
#%%
using CUDA
d |> CuArray

#%%
#Base.:*(a::CuArray, b::CuArray) = gpu code.

arit(o, x, y) = o .+= x .* y
arit50(o, x::AbstractArray, y::AbstractArray) = for i=1:50 (o .+= x .* y) end
arit100(o, x::AbstractArray, y::AbstractArray) = for i=1:100 o .+= x .* y end
arit200(o, x::AbstractArray, y::AbstractArray) = for i=1:200 o .+= x .* y end

N = 1 << (20 + 4)
@time x_cu = CUDA.randn(Float32, N)
y_cu = CUDA.randn(Float32, N)
p_cu = CUDA.zeros(Float32, N)
@btime CUDA.@sync arit($p_cu, $x_cu, $y_cu)
@btime CUDA.@sync arit50($p_cu, $x_cu, $y_cu)
@btime CUDA.@sync arit100($p_cu, $x_cu, $y_cu)
@btime CUDA.@sync arit200($p_cu, $x_cu, $y_cu)

#%%

x = [7]
y = [8]
add(a,b) = a .= a .+ b
@btime $x .= $add($x, $y)
;

#%%
