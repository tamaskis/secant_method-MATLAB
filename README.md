# `secant_method` [![View Secant Method (secant_method) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85745-secant-method-secant_method)

Calculates the root of a univariate function using the secant method.


## Syntax

`root = secant_method(f,x0)`\
`root = secant_method(f,x0,opts)`


## Description

`root = secant_method(f,x0)` returns the root of a function <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" /> specified by the function handle `f`, where `x0` is an initial guess of the root. The default tolerance and maximum number of iterations are `TOL = 1e-12` and `imax = 1e6`, respectively.

`root = secant_method(f,x0,opts)` does the same as the syntax above, but allows for the specification of optional solver parameters. `opts` is a struct that has the following fields:
   - `imax` &rightarrow; maximum number of iterations
   - `return_all` &rightarrow; all intermediate root estimates are returned if set to `true`; otherwise, only the converged root is returned
   - `TOL` &rightarrow; tolerance
   - `warnings` &rightarrow; `true` if any warnings should be displayed, `false` if not


## Examples and Additional Documentation

   - See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
   - See ["Secant_Method.pdf"](https://tamaskis.github.io/documentation/Secant_Method.pdf) (also included with download) for the technical documentation.
