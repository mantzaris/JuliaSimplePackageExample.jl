# JuliaSimplePackageExample

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://mantzaris.github.io/JuliaSimplePackageExample.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://mantzaris.github.io/JuliaSimplePackageExample.jl/dev/)
[![Build Status](https://github.com/mantzaris/JuliaSimplePackageExample.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/mantzaris/JuliaSimplePackageExample.jl/actions/workflows/CI.yml?query=branch%3Amain)

## Setup

```
using PkgTemplates

julia> tpl = Template(
           user="mantzaris",
           authors=["Alexander V. Mantzaris"],
           dir="~/Documents/repos",
	   julia=VersionNumber("1.6"),
           plugins=[
               Git(),
               GitHubActions(),
               Documenter{GitHubActions}(),
           ],
       )

julia> tpl("JuliaSimplePackageExample.jl")
```

then go into the directory and in another REPL:

```
import Pkg
Pkg.activate(".")
Pkg.test()
```

then in the terminal at that directory `julia --project=docs docs/make.jl` (_gives a warning as it is a local view_)
