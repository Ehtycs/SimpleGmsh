module SimpleGmsh

using Base
# Search local files first, then proceed to directories in load_path
# "" corresponds to the folder 
print("wadadad")
search_paths = ["", abspath(""), Base.load_path()...]
candidate_paths = [joinpath(bdir, "gmsh.jl") for bdir in search_paths]
println(candidate_paths)
gmsh_apis = [pth for pth in candidate_paths if isfile(pth)]

nfound = length(gmsh_apis)
if nfound == 0
    throw(ErrorException(string("Gmsh API (gmsh.jl) not found from the search ",
                                "path. Make sure that JULIA_LOAD_PATH is ",
                                "set correctly.")))
else
    include(gmsh_apis[1])
end

end # module
