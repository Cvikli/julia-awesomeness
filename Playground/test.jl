import GLMakie, VideoIO

cam = VideoIO.opencamera()

img = read(cam)
scene = GLMakie.Scene(resolution = size(img'))
makieimg = GLMakie.image!(scene, img, show_axis = false, scale_plot = false)
GLMakie.rotate!(scene, -0.5pi)
display(scene)

while isopen(scene)
    read!(cam, img)
    makieimg.image = img
    sleep(1/VideoIO.framerate(cam))
end

close(cam)

#%%
txt = read("test.jl", String)
open("test.jl", "w") do f
    write(f, replace(txt, "Hello New York!" => "Hello New York!"))
end

#%%
using PkgDependency
PkgDependency.tree("Startup")


#%%
using Revise
"Loaded"

#%%
"I can't run this CELL due to some revise crash?"
#%%

@show "heyy"
"wtf"

#%%

MODE_FUTURES=Val(:SPOT)
get_stream_url() = get_stream_url(DEFAULT_MOD)
get_stream_url(::Val{:SPOT})      = "spotwss://stream.binance.com:9443/stream?streams=@kline_imeframe"
get_stream_url(::Val{:FUTURES})   = "fut0wss://fstream.binance.com/stream?streams=mrket_lowcase)@kline_timeframe"
#%%
using OCReract
using Images

img = Images.load("text_pic.png")
@time text = OCReract.run_tesseract(img)
println(text)
#%%
for i in 1:10
rm("out.txt")
@time OCReract.run_tesseract("text_pic.png", "out.txt")
end
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
6 .+ "dfsd"
#%%
start=time(); using Zygote; time()-start


#%%
using Plots; immerse!()
plt = plot([0,0.1], Any[rand(2),sin])
for x in 0.2:0.1:π
    push!(plt, 1, x, rand())
    push!(plt, 2, x, sin(x))
    gui(); sleep(0.5)
end

#%%
println("heyyyooo")
#%%
io =  open("/dev/pts/11","w")
run(`echo "testt"`, io,io)
run(`tty`, io,io,io)
#%%

# @edit run(`echo testt`, "/dev/pts/11")
args=[]
@edit Base.spawn_opts_inherit(io,io,io)
@edit Base.spawn_opts_inherit(args...)
@edit Base._spawn(`echo test`, Base.spawn_opts_inherit(args...))

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
#%%
using HTTP
using JSON3
struct Comic 
    json::JSON3.Object
end

Comic() = Comic(JSON3.read(HTTP.get("https://xkcd.com/info.0.json").body))
    
Comic(i::Int) = Comic(JSON3.read(HTTP.get("https://xkcd.com/$i/info.0.json").body))
#%%


function asdf(c::Comic)
    @show "THIW RAN"
    show(HTML("""
	   <div>
        <h2><code>XKCD.Comic</code> $(c.json.num): $(c.json.title)</h2>
        <img src="$(c.json.img)" alt="$(c.json.alt)" title="$(c.json.alt)">
		<div>
          <a href="https://xkcd.com/$(c.json.num)">
            Link to Original
          </a>
	    </div>
      </div>
    """))
end
function Base.show(io::IO, ::MIME"text/html", c::Comic)
    @show "THIW RAN"
    show(io, MIME"text/html"(), HTML("""
	   <div>
        <h2><code>XKCD.Comic</code> $(c.json.num): $(c.json.title)</h2>
        <img src="$(c.json.img)" alt="$(c.json.alt)" title="$(c.json.alt)">
		<div>
          <a href="https://xkcd.com/$(c.json.num)">
            Link to Original
          </a>
	    </div>
      </div>
    """))
end
#%%
@show Comic(552)
asdf(Comic(552))
#%%
function map_inline!(f, y, x)
    for i ∈ eachindex(y, x)
        y[i] = @inline f(x[i])
    end
end
x = rand(256); y = similar(x);

@btime map!(exp, $y, $x);
@btime map_inline!(exp, $y, $x);
#%%
using JET

function f(a,b)
    a + b
end
g(a,b) = f(a,b)
g("A", "B")
@report_call g("A", "B")
#%%
macro test(expr, args...)
    @show expr
    dump(expr)
    dump(args)
    nothing
end
@test {a:2} 3 sdf
#%%
using JSObjectLiteral

@js {a: 1}

