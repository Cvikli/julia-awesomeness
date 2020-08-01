# julia-awesomeness


# to make julia awesome:
 - Learn X in Y minutes, more focuse on simpler best practices + more details on project structuring. 
 - Simpler documentation for the whole julia and adding "+" details button if anyone needs more details. Everything must be forced to be 1 SINGLE line. Details after the plus button. 
 - Julia's key is the focuse of @time. Speed & allocation is the key to performant programming. 
 - More explanation is needed for the julia --help command. 
 - "julia -e ''" command have to start instantenously.
 - precompiling modules have to be solved, because it still ads 1-1-1-1 seconds to the startup after precompiled sysimage. 
 - Jakob's Law: Users coming to julia spend most of their time on other language, to get every of them, we need to make a second include system, which similate the project organisation of the others OR explain why is this effective and how to orgnise it to solve the "dimamond include/inheritance problem" and "the Single Entrance problem". Project structuring must be solved! 
 

# timing
time julia -e ""

# to read
https://github.com/julia-vscode/LanguageServer.jl
https://github.com/FluxML/MacroTools.jl
https://github.com/IBM/AutoMLPipeline.jl
https://github.com/invenia/PkgTemplates.jl
https://github.com/chriselrod/LoopVectorization.jl
https://github.com/JuliaLang/PackageCompiler.jl
https://github.com/svaksha/pythonidae
https://github.com/JuliaLang/julia
https://github.com/svaksha/Julia.jl
https://github.com/PhilipVinc/TensorBoardLogger.jl


# startup.jl

if isfile("Project.toml") && isfile("Manifest.toml")
	using Pkg
	Pkg.activate(".")
end

# parallel update


