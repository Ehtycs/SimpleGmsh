module SimpleGmsh

using Base
for bdir in Base.load_path()
    pth = joinpath(bdir, "gmsh.jl")
    if(isfile(pth))
        include(pth)
    end
end 

end # module
