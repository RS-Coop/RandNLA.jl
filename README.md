# RandNLA.jl: Randomized algorithms for numerical linear algebra

### Author: [Cooper Simpson](https://rs-coop.github.io/)

RandNLA.jl is a pure julia package for fundamental operations and state-of-the-art research. The core is lightweight, but a variety of extensions allow for easy plug-and-play use in other packages. This is still very much a work in progress, and a full roadmap is given in [Roadmap](#roadmap).

## License & Citation
All source code is made available under an MIT license. You can freely use and modify the code, without warranty, so long as you provide attribution to the authors. See `LICENSE` for the full text.

This repository can be cited using the GitHub action in the sidebar, or using the metadata in `CITATION.cff`.

## Features
- AbstractFloat support?
- GPU support?
- Sparse support?
- Complex support?

## Installation
This package can be installed just like any other Julia package. From the terminal, after starting the Julia REPL, run the following:
```julia
julia> ]
pkg> add RSFN
```

### Testing
To test the package, run the following command in the REPL:
```julia
using Pkg
Pkg.test(test_args=[<specific tests>])
```

## Usage
Load the package as usual:
```julia
using RandNLA
```

## Design Principles

1. Provide a consolidated suite of algorithms, both well established and state of the art
2. Interface nicely with other Julia linear algebra packages such as [Krylov.jl](https://github.com/JuliaSmoothOptimizers/Krylov.jl)
3. Leverage Julia to provide efficient implementations while staying adaptable and updateable

### References

#### Papers
- [RandNLA Survery](https://arxiv.org/abs/2302.11474)

#### Julia Packages
- [RandomizedLinAlg.jl](https://github.com/JuliaLinearAlgebra/RandomizedLinAlg.jl)
    - Last updated early 2021
- [RandNLA.jl](https://github.com/matsumotosan/RandNLA.jl)
    - Last updated mid 2022
- [RandomLinearAlgebraSolvers.jl](https://github.com/tmigot/RandomLinearAlgebraSolvers.jl)
    - Last updated late 2021
- [Randomized Preconditioners.jl](https://github.com/tjdiamandis/RandomizedPreconditioners.jl)

#### Python Packages
- [PARLA](https://github.com/BallisticLA/parla)
    - Continuously updated
- [PyRLA: Randomized Linear Algebra in Python](https://github.com/wangshusen/PyRLA)
    - Last updated 2017
- [RandNLA](https://github.com/positiveblue/randNLA)
    - Last updated 2017

#### C++ Pacakges
- [RandLAPACK](https://github.com/BallisticLA/RandLAPACK)
    - Continuously updated
- [RandBLAS](https://github.com/BallisticLA/RandBLAS)
    - Continuously updated

## Roadmap
1. Basic Sketching
    - 
2. Property estimation
    - Trace
    - Norm
3. Decompositions
    - SVD
    - Nystrom (positive definite and indefinite)
    - ID
    - CUR
4. Advanced Sketching
    - Leverage-score sampling
5. Advanced algorithms
    - Randomized finite differences