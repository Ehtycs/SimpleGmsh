This is a simple wrapper package which loads gmsh api from JULIA_LOAD_PATH.

1. Install gmsh SDK wherever you prefer and however you like.
2. Add the "lib" directory containing "gmsh.jl" and the library files into JULIA_LOAD_PATH
```
$ JULIA_LOAD_PATH=<location>:$JULIA_LOAD_PATH
```
3. Add SimpleGmsh package into your Julia environment from GitHub by 
```
julia> using Pkg; Pkg.add(url="https://github.com/Ehtycs/SimpleGmsh")
``` 
or in Julia REPL, hit "]" to activate package manager and type
```
(v1.6) pkg> add https://github.com/Ehtycs/SimpleGmsh
```

**Note:** preferably create [a new environment](https://pkgdocs.julialang.org/v1.2/environments/). for yourself before step 3.

4. Now you can use 
```
using/import SimpleGmsh: gmsh
``` 
to get the authentic GMSH api experience.
