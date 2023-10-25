using Documenter, RandNLA

makedocs(
  modules = [RandNLA],
  doctest = true,
  linkcheck = true,
  format = Documenter.HTML(assets = ["assets/style.css"],
                           ansicolor = true,
                           prettyurls = get(ENV, "CI", nothing) == "true",
                           collapselevel = 1),
  sitename = "RandNLA.jl",
  pages = ["Home" => "index.md"]
)

deploydocs(
  repo = "github.com/rs-coop/RandNLA.jl.git",
  push_preview = true,
  devbranch = "main",
)