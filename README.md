# `secant_method` [![View Secant Method (secant_method) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85745-secant-method-secant_method)

Calculates the root of a univariate function using the secant method.


## Syntax

`root = secant_method(f,x0)`\
`root = secant_method(f,x0,TOL)`\
`root = secant_method(f,x0,[],imax)`\
`root = secant_method(f,x0,TOL,imax)`\
`root = secant_method(__,'all')`


## Description

`root = secant_method(f,x0)` returns the root of a function <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" /> specified by the function handle `f`, where `x0` is an initial guess of the root. The default tolerance and maximum number of iterations are `TOL = 1e-12` and `imax = 1e6`, respectively.

`root = secant_method(f,x0,TOL)` returns the root of a function <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" /> specified by the function handle `f`, where `x0` is an initial guess of the root and `TOL` is the tolerance. The default maximum number of iterations is `imax = 1e6`.

`root = secant_method(f,x0,[],imax)` returns the root of a function <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" /> specified by the function handle `f`, where `x0` is an initial guess of the root and `imax` is the maximum number of iterations. The default tolerance is `TOL = 1e-12`.

`root = secant_method(f,x0,TOL,imax)` returns the root of a function <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" /> specified by the function handle `f`, where `x0` is an initial guess of the root, `TOL` is the tolerance, and `imax` is the maximum number of iterations.

`root = secant_method(__,'all')` returns a vector, where the first element of this vector is the initial guess, all intermediate elements are the intermediate estimates of the root, and the last element is the converged root. This identifier 'all' may be appended to any of the syntaxes used above.


## Examples and Additional Documentation

   -  See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
   -  See "DOCUMENTATION.pdf" (included with download, also available at https://github.com/tamaskis/secant_method-MATLAB/blob/main/DOCUMENTATION.pdf) for additional documentation.
