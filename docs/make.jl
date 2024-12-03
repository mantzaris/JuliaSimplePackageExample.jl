using JuliaSimplePackageExample
using Documenter

DocMeta.setdocmeta!(JuliaSimplePackageExample, :DocTestSetup, :(using JuliaSimplePackageExample); recursive=true)

makedocs(;
    modules=[JuliaSimplePackageExample],
    authors="Alexander V. Mantzaris",
    sitename="JuliaSimplePackageExample.jl",
    format=Documenter.HTML(;
        canonical="https://mantzaris.github.io/JuliaSimplePackageExample.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mantzaris/JuliaSimplePackageExample.jl",
    devbranch="master",
)
