export getchar, set_homedir, get_homedir

charset = 'a':'z'

getchar(idx::Int64) = charset[idx]::Char


const homedir = Ref{String}("wrong")

function set_homedir(path)
    global homedir[] = path
end
get_homedir() = homedir[]

