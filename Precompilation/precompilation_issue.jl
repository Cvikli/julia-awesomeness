


using TestPKG: load
using MyPKG: MyStruct

load(MyStruct, 4, 5f0)



#%%
using Arithmetics: mean
mean(randn(3,4,3), dims=(2))

#%%

xxx(arr; dims) = sum(arr, dims=dims) / prod(size(arr, r) for r in dims)
xxx(arr) = sum(arr)
# mean(arr) = sum(arr) / length(arr)


#%%
#%%
h(a; c=nothing) = a + c
h(a) = a+5
h(2)
