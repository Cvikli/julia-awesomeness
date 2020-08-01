import Pkg;
installed_pkgs = Pkg.installed()
function add_pkg(name; kw...)
        !(haskey(installed_pkgs, name) && (!(:version in keys(kw)) || installed_pkgs[name] == kw[:version])) && Pkg.add(Pkg.PackageSpec(;name=name, kw...))
end 
add_pkg("Revise")
add_pkg("Flux", version=v"0.11.0")
add_pkg("BenchmarkTools")
add_pkg("Zygote", version=v"0.5.3")
add_pkg("Distributions")
add_pkg("OhMyREPL")
add_pkg("EllipsisNotation")
add_pkg("LanguageServer")
add_pkg("Parameters")
add_pkg("JSON2")
add_pkg("JuliaFormatter")
add_pkg("LightGraphs")
add_pkg("GraphPlot")
add_pkg("Plots")
add_pkg("PackageCompiler")
# SymbolServer
using PackageCompiler
@show "Build starting..."

create_sysimage([:Revise, :JuliaFormatter, 
                # :Juno, :Atom,
                :LanguageServer, # :SymbolServer, :CSTParser, :StaticLint, :DocumentFormat,
                :PackageCompiler,
                :EllipsisNotation, :Parameters, :JSON2,
                :Distributions,
                :OhMyREPL,
                :Plots,
                :Flux, :Zygote,
                # :Colors
                ];
        replace_default=true,
        precompile_execution_file="precompile.jl")
# to time julia startup: time julia  -e ''
# default img: julia -e ''  0.15s user 0.09s system 78% cpu 0.306 total
# modded  img: julia -e ""  4,57s user 0,69s system 110% cpu 4,741 total
