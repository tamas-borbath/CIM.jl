using CIM
using Documenter

makedocs(;
    modules=[CIM],
    authors="Tamás Borbáth",
    repo="https://github.com/tamas-borbath/CIM.jl/blob/{commit}{path}#L{line}",
    sitename="CIM.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://tamas-borbath.github.io/CIM.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/tamas-borbath/CIM.jl",
)
