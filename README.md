This is a simple wrapper package which loads an separately installed GMSH SDK into Julia.

1. Install gmsh SDK wherever you prefer and however you like.

2. Add the directory containing "gmsh.jl" into JULIA_LOAD_PATH
```
$ JULIA_LOAD_PATH=<location>:$JULIA_LOAD_PATH
```

3. Add the directory containing the dynamic library file to $PATH, $JULIA_LOAD_PATH or something else. To be honest, I'm not 100% sure how it is searched from the system... sorry.

**Alternatively:** just copy & paste "gmsh.jl" and the library file to your working folder. It should be found from there.

4. Add SimpleGmsh package into your Julia environment from GitHub by 

```
julia> using Pkg; Pkg.add(url="https://github.com/Ehtycs/SimpleGmsh")
``` 
or in Julia REPL, hit "]" to activate package manager and type
```
(v1.6) pkg> add https://github.com/Ehtycs/SimpleGmsh
```

**Note:** preferably create [a new environment](https://pkgdocs.julialang.org/v1.2/environments/). for yourself before step 3.

5. Now you can use 
```
using/import SimpleGmsh: gmsh
``` 
to get the authentic GMSH api experience.
