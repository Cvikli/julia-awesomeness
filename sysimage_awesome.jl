import Pkg
import Base

direct_installed = [pkginfo for (k,pkginfo) in Pkg.dependencies() if pkginfo.is_direct_dep ]
println("Julia image $VERSION | $(length(direct_installed)) pkgs installed with $(length(Pkg.dependencies())) dependency pkgs.")
ENV["JULIA_DEBUG"] = "CUDA" # for better CUDA error messages.

Base.:*(a::Vector{String}, b::Vector{String}) = vcat(a, b)
Base.:*(a::Vector{Pkg.PackageSpec}, b::Vector{String}) = a * Pkg.PackageSpec.(b)
Base.:*(a::Vector{Pkg.Types.PackageSpec}, b::Vector{Pkg.Types.PackageSpec}) = vcat(a, b) 
Pkg.PackageSpec(n::String, v::VersionNumber) = Pkg.PackageSpec(;name=n, version=v)
Pkg.PackageSpec(n::SubString{String}, v::SubString{String}) = Pkg.PackageSpec(String(n), VersionNumber(v))
PkgaddSpec(pkgs::Vector{String}) = (
  Pkg.add([pkg for pkg in pkgs if !occursin("@",pkg)]);
  [Pkg.add(Pkg.PackageSpec(split(pkg, "@")...)) for pkg in pkgs if occursin("@",pkg)];)


# Pkg.rm(["CSV", "Flux"])

# packages = [Pkg.PackageSpec("LLVM")]
# packages *= [Pkg.PackageSpec("Flux", v"0.12.4")]
# Pkg.add(packages)
packages = Pkg.PackageSpec[]
packages *= ["Revise"]
packages *= ["BenchmarkTools"]
packages *= ["Zygote", "ChainRules"] # Flux (TOO MANY Invalidation)
packages *= ["MLDatasets"]
packages *= ["FiniteDifferences"]
packages *= ["TensorBoardLogger"]
packages *= ["InteractiveUtils"]
packages *= ["GPUCompiler"]
# packages *= ["CUDA"]
# packages *= ["AMDGPU"]
# packages *= ["KernelAbsretractions"]
packages *= ["Cthulhu", "JET"]
packages *= ["Distributions", "EllipsisNotation", "FastClosures"]
packages *= ["JSON", "JSON2", "JLD2", "WebSockets", "HTTP", "FileIO"]  # , "JLD", "Redis", "CSV" (TOO MANY Invalidation), "JSON3" (TOO MANY Invalidation)
# packages *= ["VideoIO"]
# packages *= ["GraphRecipes"]  
packages *= ["Colors", "Crayons"]
packages *= ["DataStructures"]  # , "ORCA"
packages *= ["KernelDensity"]  # "DataFrames" (many invalidation)
packages *= ["Distributed", "ClusterManagers","Memoize"] # 
packages *= ["PackageCompiler", "PyCall", "JuliaFormatter"] 
packages *= ["Glob", "LRUCache"]  # , "KernelDensity", "StatsPlots"
packages *= ["MethodAnalysis", "SnoopCompile", "SnoopCompileCore", "AbstractTrees", "CodeTracking"]  # , "ProfileView"
packages *= ["ProgressMeter"]
packages *= ["DiffRules", "OrderedCollections", "JuliaInterpreter", "MacroTools"]
# utilities:
packages *= ["SparseArrays", "Random", "Printf"]
packages *= ["FastBroadcast", "LoopVectorization"]
packages *= ["ThreadTools"]
packages *= ["Suppressor"]
packages *= ["Parameters"]
# packages *= ["AbstractPlotting"]
# packages *= ["Makie"]
packages *= ["PlotlyBase", "Plots", "GeometryBasics"]
packages *= ["Graphs", "Makie", "GLMakie", "GraphMakie"]
# packages *= ["GoogleSheets"]
packages *= ["ColorSchemes"]
packages *= ["ProgressBars"]
packages *= ["PrettyTables", "DataFrames"]
packages *= ["ThreadSafeDicts"]
packages *= ["UnicodePlots"]
packages *= ["GraphQLClient"]

packages *= ["CUDA"]
packages *= ["KernelAbstractions"]
packages *= ["OneHotArrays", "TimeSeries", "TimeZones"]
# packages *= ["JpegTurbo_jll", "ImageIO", "TiffImages", "x265_jll", "LibGit2", "libfdk_aac_jll", "OffsetArrays", "SIMDDualNumbers", "OpenLibm_jll", "Libmount_jll", "GR_jll", "PNGFiles", "ShowCases", "ContextVariablesX", "LLVM_jll", "LERC_jll", "CRC32c", "StatsFuns", "Accessors", "Preferences", "FFTW", "NNlib", "Opus_jll", "ColorSchemes", "Xorg_xorgproto_jll", "Xorg_xkbcomp_jll", "RelocatableFolders", "Unitful", "GR", "FoldingTrees", "Contour", "PDMats", "REPL", "NNlibCUDA", "ArgTools", "MarchingCubes", "OpenBLAS_jll", "TimerOutputs", "Measures", "StaticArrays", "EarCut_jll", "argp_standalone_jll", "Polyester", "Optimizers", "Grisu", "OpenEXR", "Xorg_xcb_util_wm_jll", "Xorg_xcb_util_image_jll", "ModernGL", "PlotUtils", "RecipesPipeline", "Markdown", "ProtoBuf", "InitialValues", "CEnum", "Xorg_libpthread_stubs_jll", "DelimitedFiles", "InvertedIndices", "FunctionWrappers", "GPUArrays", "DataFrames", "BFloat16s", "Cairo_jll", "LazyArtifacts", "LibCURL_jll", "Xorg_xcb_util_jll", "RandomNumbers", "Fontconfig_jll", "Statistics", "Libgpg_error_jll", "IntelOpenMP_jll", "Xorg_libxkbfile_jll", "Netpbm", "Xorg_libXinerama_jll", "SignedDistanceFields", "ZygoteRules", "ROCmCompilerSupport_jll", "Static", "SLEEFPirates", "MLUtils", "PrettyPrint", "SuiteSparse", "Xorg_libXau_jll", "LLVM", "SHA", "Missings", "obstack_jll", "FFMPEG", "RealDot", "SIMDTypes", "SIMD", "IRTools", "IrrationalConstants", "Showoff", "ScanByte", "Functors", "ArnoldiMethod", "MathTeXEngine", "NUMA_jll", "Xorg_libpciaccess_jll", "fts_jll", "PolygonOps", "CpuId", "FLoopsBase", "Qt5Base_jll", "Dates", "Hwloc_jll", "SpecialFunctions", "xkbcommon_jll", "Xorg_xcb_util_keysyms_jll", "LoweredCodeUtils", "ProgressLogging", "Bzip2_jll", "XZ_jll", "HarfBuzz_jll", "IfElse", "isoband_jll", "PlotThemes", "PkgVersion", "Sockets", "NetworkOptions", "StringEncodings", "CommonMark", "Zlib_jll", "NaNMath", "DefineSingletons", "MicroCollections", "LZO_jll", "NameResolution", "ThreadingUtilities", "p7zip_jll", "TranscodingStreams", "FriBidi_jll", "ManualMemory", "Elfutils_jll", "HIP_jll", "Serialization", "Random123", "UnicodeFun", "Test", "Graphics", "MbedTLS", "Rmath_jll", "GLFW_jll", "Ratios", "BinaryProvider", "x264_jll", "FreeType", "CommonSubexpressions", "MappedArrays", "FreeType2_jll", "LeftChildRightSiblingTrees", "PaddedViews", "MLStyle", "BangBang", "LibCURL", "ExprTools", "StatsAPI", "ROCKernels", "Compat", "Logging", "GridLayoutBase", "Automa", "nghttp2_jll", "Tar", "FLoops", "StatsBase", "MosaicViews", "TimeSeries", "protoc_jll", "Xorg_libxcb_jll", "FlameGraphs", "libpng_jll", "StructTypes", "ImageCore", "Scratch", "ColorTypes", "BitTwiddlingConvenienceFunctions", "Flux", "Mmap", "Match", "Base64", "PrettyTables", "LayoutPointers", "Xorg_libXext_jll", "ArgCheck", "Conda", "JSON3", "TensorCore", "Zstd_jll", "FreeTypeAbstraction", "ROCmDeviceLibs_jll", "TableTraits", "Isoband", "Expat_jll", "CompilerSupportLibraries_jll", "DiffResults", "LinearAlgebra", "Inflate", "Animations", "Parsers", "hsa_rocr_jll", "libblastrampoline_jll", "Imath_jll", "Setfield", "PooledArrays", "MKL_jll", "Libtiff_jll", "AbstractFFTs", "JLLWrappers", "Packing", "PCRE_jll", "Tokenize", "ConstructionBase", "ColorVectorSpace", "DataValueInterfaces", "Libffi_jll", "LLVMExtra_jll", "rocminfo_jll", "Xorg_libXrender_jll", "MozillaCACerts_jll", "ChainRulesCore", "MeshIO", "Interpolations", "Ogg_jll", "Future", "JET", "Xorg_libXi_jll", "PolyesterWeave", "XSLT_jll", "ArrayInterface", "Reexport", "LogExpFunctions", "TOML", "StackViews", "CloseOpenIntervals", "FFTW_jll", "MbedTLS_jll", "CompositionsBase", "SharedArrays", "OpenSpecFun_jll", "UnPack", "Compose", "UUIDs", "Xorg_libXcursor_jll", "JuliaVariables", "InverseFunctions", "Unicode", "Pkg", "Libuuid_jll", "SimpleTraits", "ColorBrewer", "Libdl", "YAML", "DocStringExtensions", "OpenEXR_jll", "hsakmt_roct_jll", "Wayland_protocols_jll", "Xorg_xcb_util_renderutil_jll", "Transducers", "Adapt", "Graphite2_jll", "StrideArraysCore", "libass_jll", "VectorizationBase", "XML2_jll", "Rmath", "Pixman_jll", "Artifacts", "IntervalSets", "Latexify", "Gettext_jll", "rocRAND_jll", "Wayland_jll", "IterTools", "FileWatching", "Xorg_xtrans_jll", "GLFW", "GPUCompiler", "OpenSSL_jll", "libdrm_jll", "FoldsThreads", "FFMPEG_jll", "IndirectArrays", "Libgcrypt_jll", "Profile", "CPUSummary", "MakieCore", "Tables", "Xorg_xkeyboard_config_jll", "DataAPI", "FixedPointNumbers", "Xorg_libXrandr_jll", "ShaderAbstractions", "Baselet", "RecipesBase", "Xorg_libXfixes_jll", "LAME_jll", "Richardson", "IteratorInterfaceExtensions", "Libiconv_jll", "Hwloc", "IniFile", "URIs", "StructArrays", "HostCPUFeatures", "LibSSH2_jll", "VersionParsing", "LaTeXStrings", "libvorbis_jll", "Glib_jll", "Downloads", "Libglvnd_jll", "ForwardDiff", "FillArrays", "QuadGK", "BSON", "AxisAlgorithms", "SplittablesBase", "Xorg_libXdmcp_jll", "Xorg_libX11_jll", "Observables", "ROCmOpenCLRuntime_jll", "CSTParser", "Unzip", "libLLVM_jll", "SortingAlgorithms", "WoodburyMatrices", "ChangesOfVariables", "DensityInterface"]
# packages *= ["UnsafeAtomicsLLVM", "UnsafeAtomics"]
# packages *= [Pkg.PackageSpec(url="https://github.com/Sixzero/OCReract.jl.git")]
# packages *= [Pkg.PackageSpec(url="https://github.com/Sixzero/GoogleSheets.jl.git")] # no compaats problem.
Pkg.add(packages)

#%%
import Pkg
include("PC_config.jl")
# Pkg.add(Pkg.PackageSpec(path="$(pwd())/MemoizePro/"))


# dev ../../../repo/julia-awesomeness/HwAllocator/
# own_pkgs = [Pkg.PackageSpec(path="./Arithmetics.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./SendTG/")]
# own_pkgs *= [Pkg.PackageSpec(path="./PkgManager.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./HwAllocator.jl/")]
# # own_pkgs *= [Pkg.PackageSpec(path="./EasyGrad.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./Pythonish.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./HTTPUtils.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./Losses.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./Optimizers.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./NamedColors.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./Boilerplate.jl/")]
# # own_pkgs *= [Pkg.PackageSpec(path=traderjulias_path * "/trader-julias/Crypto")]
# own_pkgs *= [Pkg.PackageSpec(path="./RelevanceStacktrace.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./UnicodePlotsSimple.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./ZygoteExtensions.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./BinanceAPI.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./SparseArrayVectors.jl/")]


own_pkgs = [Pkg.PackageSpec(path="./RelevanceStacktrace.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./Arithmetics.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./HwAllocator.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./HTTPUtils.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./NamedColors.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./Boilerplate.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./Tracker.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./Tensors.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./RefClosures.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./PkgManager.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./Utils.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./Unimplemented.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./InitLoadableStruct.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./MemoizeTyped.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./ExtendableStruct.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./PersistableStruct.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./Pythonish.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./UniversalStruct.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./AsyncTerminal.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./BinanceAPI.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./CryptoOHLCV.jl")]
# own_pkgs *= [Pkg.PackageSpec(path="./Optimizers.jl")]
# own_pkgs *= [Pkg.PackageSpec(path="./Losses.jl")]
# own_pkgs *= [Pkg.PackageSpec(path="./LazySortedArray.jl")]
# own_pkgs *= [Pkg.PackageSpec(path="./EasyGrad.jl")]
# own_pkgs *= [Pkg.PackageSpec(path="./EasyPrms.jl")]
# own_pkgs *= [Pkg.PackageSpec(path="./SparseArrayVectors.jl")]
own_pkgs *= [Pkg.PackageSpec(path="./UnicodePlotsSimple.jl")]
# own_pkgs *= [Pkg.PackageSpec(path="./ZygoteExtensions.jl")]



# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "/PrecompilePkg/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "Storage.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "BatchSchedulers.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "DataPipe.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "GraphPipe.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "GraphPlt.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "TransGraphPipe.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "DiabTrend.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "GoogleSheetsOWN.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "Amoeba.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path=twin_ai_path * "TwinAI.jl/")]
# own_pkgs *= [Pkg.PackageSpec(path="./EasyPrms.jl/")]
Pkg.develop(own_pkgs)
println("Building packages...")
Pkg.build()
#%%
println("You want to build img too? (y/N)")
# if !(length(ARGS)>0 && ARGS[1] == "--force") && !(chomp(readline()) in ["y", "Y", "yes", "Yes", "YES"]) begin exit() end end
StartOfString(str, e) = join([c for (i, c) in enumerate(str) if i<=e], "")

include("PC_config.jl")


using PackageCompiler
using Pkg

precompileable_pkgs = 
[
  :Revise,  

  # :PrecompilePkg,

  # :Storage,           # CANNOT BE PRECOMPILED because then Revise doesn't work
  # :DataPipe,          # CANNOT BE PRECOMPILED because then Revise doesn't work
  # :GraphPipe,         # CANNOT BE PRECOMPILED because then Revise doesn't work
  # :TransGraphPipe,    # CANNOT BE PRECOMPILED because then Revise doesn't work
  # :Boilerplate,       # CANNOT BE PRECOMPILED because then Revise doesn't work
  # :HwAllocator,       # CANNOT BE PRECOMPILED because then Revise doesn't work
  # :NamedColors,       # CANNOT BE PRECOMPILED because then Revise doesn't work
  
  # :RelevanceStacktrace,

  # :PackageCompiler,
  # :Distributed,

  # :PyCall,

  # :Distributions,
  # :Flux,
  # :Zygote,

  :LoopVectorization,
  :SparseArrays,
  :Random,
  # :FastBroadcast,
  
  # :CUDA,
  :Colors,
  :Crayons,
  :Printf,
  # :ProgressMeter,
  

  :DataStructures,
  # :JSON2,
  # :JSON3,
  :JLD2,
  :FileIO,
  # :CSV,
  :HTTP,
  :WebSockets,

  # :EllipsisNotation,
  # :Parameters,
  :Memoize,
  :Glob,

  :Formatting,
  :JuliaFormatter,
  
  # :MethodAnalysis,
  # :SnoopCompile,
  :BenchmarkTools,
  :InteractiveUtils, 

  :Plots,
  :GeometryBasics,
  :Graphs, 
  # :Makie, 
  :GLMakie, 
  :GraphMakie, 
  

  # :GR,
  # :LightGraphs,
  # :NetworkLayout,
  # :PlotlyBase,
  # :GeometryBasics,

  
# [Symbol(pkginfo.name) for (uuid, pkginfo) in Pkg.dependencies() 
# if !pkginfo.is_tracking_path && pkginfo.is_direct_dep &&
#   !(pkginfo.name in ["UnicodePlots", "Distributed"])]..., 
]
using Glob
get_latest_filepattern(path, fila_pattern) = sort([split(filepath, "/")[end] for filepath in glob(fila_pattern, path)])
syimage_name = "Julia$(VERSION).sysimage_"
prev_images = get_latest_filepattern("./julia_images/","$syimage_name*.so")
if length(prev_images) > 0
  images_versions = map(v->parse(Int,replace(split(v, "_")[2],".so" => "")),prev_images)
  latest_image_number_extracted_int = maximum(images_versions)
  syimage_name_1 = "$(syimage_name)$(latest_image_number_extracted_int+1).so"
  syimage_name_2 = "$(syimage_name)$(latest_image_number_extracted_int+2).so"
else
  syimage_name_1 = "$(syimage_name)1.so"
  syimage_name_2 = "$(syimage_name)2.so" # The second image is double times faster...
end 

##### Specifiing custom build names
# syimage_name_1 = "$(syimage_name)2.so"
# syimage_name_2 = "$(syimage_name)3.so"
######

println("Building 1. sysimage... ($syimage_name_1)")
bt = @elapsed create_sysimage(precompileable_pkgs; sysimage_path="$(syimage_name_1)", 
                              precompile_execution_file = "precompile_main.jl",
                              # incremental=false,
                              incremental=true,
                              )
println("Build 1. Done in $(bt)s! ($syimage_name_1)")
#%%
println("Build 2 started... ($syimage_name_2)")
cmd = """using PackageCompiler; create_sysimage($precompileable_pkgs;  sysimage_path="$(syimage_name_2)")"""
cmd = "'$cmd'"
@show "julia -J$(syimage_name_1) -e $(cmd[2:end-1])"
bt = @elapsed run(`julia -J$(syimage_name_1) -e $(cmd[2:end-1])`)
println("Build 2 Done in $(bt)s! ($syimage_name_2)")

println("Put: -J$(pwd())/$(syimage_name_2) into the json \"julia.additionalArgs\": [...]")

# config = "/home/hm/.config/Code/User/settings.json"
# println("Should I do it automatically? (y/N)  [File: $config]")
# if !(length(ARGS)>0 && ARGS[1] == "--force") && !(chomp(readline()) in ["y", "Y", "yes", "Yes", "YES"])  
#   txt = read(config, String)
#   open(config, "w") do f
#       write(f, replace(txt, "Hello New York!" => "Hello New York!"))
#   end
# end

# #%%
# config = "/home/hm/.config/Code/User/settings.json"
# txt = read(config, String)
# reg = r"    \"[^\/]+\/([^\/]*\/)+(.*)\.so"
# out = match(reg, txt)
# Base.loaded_modules

# time julia  -e ''
# 1.5.1
# default img: julia -e ''  0.15s user 0.09s system 78% cpu 0.306 total
# modded  img: julia -e ""  4,57s user 0,69s system 110% cpu 4,741 total
# 1.5.2
# default  img: julia -e ''  0,11s user 0,12s system 186% cpu 0,121 total
# + pkgs   img: julia -e ''  0,09s user 0,15s system 159% cpu 0,146 total
# modded   img: julia -e ''  1,09s user 0,56s system 148% cpu 1,110 total
# modded2  img: julia -e ''  0,84s user 0,52s system 164% cpu 0,828 total
# modded2  img: julia -e ''  0,71s user 0,57s system 172% cpu 0,743 total
# snoopi?  img: julia -e ''  0,75s user 0,56s system 169% cpu 0,770 total
# 1.6.0-rc1
# default img: julia -e ''  0,13s user 0,06s system 109% cpu 0,176 total

# modded   img: julia -JJuliaPreSysimageALL.so -e ''  6,00s user 0,66s system 64% cpu 10,275 total
# modded2  img: julia -JJuliaPreSysimageALL.so -e ''  0,88s user 0,61s system 30% cpu 4,918 total
# modded   img: julia -JJuliaPreSysimageOpt1.so -e ''  6,97s user 0,67s system 61% cpu 12,371 total
# modded   img: julia -JJuliaPreSysimageOpt1.so -e ''  7,13s user 0,65s system 66% cpu 11,660 total
# modeed2  img: julia -JJuliaPreSysimageOpt2.so -e ''  0,91s user 0,59s system 26% cpu 5,663 total
# modeed2  img: julia -JJuliaPreSysimageOpt2.so -e ''  0,89s user 0,59s system 26% cpu 5,520 total



# modeed   img: julia -JJulia17PreSysimageOpt2.so -e ''  0,75s user 0,67s system 26% cpu 5,251 total



#%%
# using Pkg
# package = Pkg.PackageSpec(path="./Boilerplate")
# Pkg.develop(package)

