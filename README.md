# `secant_method` [![View Secant Method (secant_method) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85745-secant-method-secant_method)

Secant method for finding the root of a univariate, scalar-valued function.


## Syntax

`x = secant_method(f,x0)`\
`x = secant_method(f,x0,opts)`\
`[x,k] = secant_method(__)`\
`[x,k,x_all] = secant_method(__)`


## Description

`x = secant_method(f,x0)` returns the root of a function <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" /> specified by the function handle `f`, where `x0` is an initial guess of the root.

`x = secant_method(f,x0,opts)` does the same as the syntax above, but allows for the specification of optional solver parameters. `opts` is a structure with the following fields:
   - `k_max` &rightarrow; maximum number of iterations (defaults to 200)
   - `return_all` &rightarrow; returns estimates at all iteration if set to `true` (defaults to `false`)
   - `TOL` &rightarrow; tolerance (defaults to <img src="https://latex.codecogs.com/svg.latex?\inline&space;10^{-10}" title="" />)

`[x,k] = secant_method(__)` also returns the number of iterations (`k`) performed of the secant method.

`[x,k,x_all] = secant_method(__)` does the same as the previous syntaxes, but also returns an array (`x_all`) storing the root estimates at each iteration. This syntax requires that `opts.return_all` be set to true.


## Examples and Additional Documentation

   - See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
   - See ["Root_Finding_Methods.pdf"](https://tamaskis.github.io/documentation/Root_Finding_Methods.pdf) (also included with download) for the technical documentation.
