@info "Precompile_main.jl is running!"

module PreCompileOWN

include("PC_config.jl")
cd(twin_ai_path)
include(twin_ai_path * "TwinAI.jl/test/main.warmup.test.jl")

end

@info "Precompile.jl finished running!"