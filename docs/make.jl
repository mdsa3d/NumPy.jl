using NumPy
using Documenter

DocMeta.setdocmeta!(NumPy, :DocTestSetup, :(using NumPy); recursive=true)

makedocs(;
    modules=[NumPy],
    authors="Mohammad Saad",
    repo="https://github.com/mdsa3d/NumPy.jl/blob/{commit}{path}#{line}",
    sitename="NumPy.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mdsa3d.github.io/NumPy.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mdsa3d/NumPy.jl",
    devbranch="master",
)
