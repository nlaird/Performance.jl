export DefaultArray

# To solve this problem, you'll have to improve the `struct` definition and modify/add constructors
struct DefaultArray{T, N} <: AbstractArray{T, N}
    parentarray::Array{T,N}
    defaultvalue::T
end
DefaultArray(parentarray, defaultvalue) = DefaultArray{promote_type(eltype(parentarray), typeof(defaultvalue)), ndims(parentarray)}(parentarray, defaultvalue)
DefaultArray(parentarray, nothing) = DefaultArray{Union{eltype(parentarray), Nothing}, ndimsndims(parentarray)}(parentarray, nothing)

@inline Base.getindex(a::DefaultArray{T, N}, i::Vararg{Int,N}) where {T,N} = checkbounds(Bool, a, i...) ? a.parentarray[i...] : a.defaultvalue
Base.size(a::DefaultArray) = size(a.parentarray)
