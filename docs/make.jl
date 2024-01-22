using EMPJuMP
using Documenter

DocMeta.setdocmeta!(EMPJuMP, :DocTestSetup, :(using EMPJuMP); recursive=true)

makedocs(;
    modules=[EMPJuMP],
    authors="Luiz-Rafael Santos",
    repo="https://github.com/lrsantos11/EMPJuMP.jl/blob/{commit}{path}#{line}",
    sitename="EMPJuMP.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://lrsantos11.github.io/EMPJuMP.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/lrsantos11/EMPJuMP.jl",
    devbranch="main",
)
