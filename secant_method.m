% secant_method  Calculates the root of a univariate function using the 
% secant method.
%
%   root = secant_method(f,x0) returns the root of a function f(x)
%   specified by the function handle f, where x0 is an initial guess of the
%   root. The default tolerance and maximum number of iterations are 
%   TOL = 1e-12 and imax = 1e6, respectively.
%
%   root = secant_method(f,x0,TOL) returns the root of a function f(x)
%   specified by the function handle f, where x0 is an initial guess of the
%   root and TOL is the tolerance. The default maximum number of iterations
%   is imax = 1e6.
%
%   root = secant_method(f,x0,[],imax) returns the root of a function f(x)
%   specified by the function handle f, where x0 is an initial guess of the
%   root and imax is the maximum number of iterations. The default 
%   tolerance is TOL = 1e-12.
%
%   root = secant_method(f,x0,TOL,imax) returns the root of a function
%   f(x) specified by the function handle f, where x0 is an initial guess
%   of the root, TOL is the tolerance, and imax is the maximum number of
%   iterations.
%
%   root = secant_method(__,'all') returns a vector, where the first
%   element of this vector is the initial guess, all intermediate elements
%   are the intermediate estimates of the root, and the last element is the
%   converged root. This identifier 'all' may be appended to any of the
%   syntaxes used above.
%
% See also fzero
%
% MATLAB Central File Exchange: https://www.mathworks.com/matlabcentral/fileexchange/85745-secant-method-secant_method
% GitHub: https://github.com/tamaskis/secant_method-MATLAB
%
% See "Secant Method - MATLAB implementation" for additional documentation.
% Examples can be found in EXAMPLES.m. Both of these files are included
% with the download.
%
% Copyright (c) 2021 Tamas Kis



%% FUNCTION

% INPUT: f - function handle for f(x)
%        x0 - initial guess for root
%        TOL - (OPTIONAL) tolerance
%        imax - (OPTIONAL) maximum number of iterations
%        output - if specified as 'all', function will returns all 
%                 intermediate root estimates; otherwise, a faster 
%                 algorithm is used to only return the converged root
% OUTPUT: root - root of f(x)
%          --> if "output" is specified as 'all', then "root" will be a 
%              vector, where the first element is the initial guess, the 
%              last element is the converged root, and the other elements 
%              are intermediate estimates of the root
%          --> otherwise, "root" is a single number storing the converged
%              root
function root = secant_method(f,x0,TOL,imax,output)
    
    % sets default tolerance and maximum number of iterations if not
    % specified by user
    if (nargin < 3) || isempty(TOL)
        TOL = 1e-12;
    end
    if (nargin < 4) || isempty(imax)
        imax = 1e6;
    end
    
    % decides which algorithm to use
    if nargin < 5
        return_all = false;
    else
        if strcmp(output,'all')
            return_all = true;
        else
            return_all = false;
        end
    end
    
    % initializes the error so the loop will be entered
    err = 2*TOL;
    
    % preallocates x
    x = zeros(imax,1);
    
    % implements algorithm for the secant method where all intermediate 
    % root estimates are also returned
    if return_all
        
        % inputs 1st and 2nd guesses for root into x vector
        x(1) = x0;
        x(2) = 1.01*x0;

        % secant method
        i = 2;
        while (i < imax) && (err > TOL)

            % updates estimate of root
            x(i+1) = (x(i-1)*f(x(i))-x(i)*f(x(i-1)))/(f(x(i))-f(x(i-1)));

            % calculates error
            err = abs(x(i+1)-x(i));

            % increments loop index
            i = i+1;

        end

        % returns converged root along with intermediate root estimates
        root = x(1:i);
    
    else
        
        % sets root estimates for 1st iteration of the secant method
        x_old = x0;
        x_int = 1.01*x0;

        % secant method
        i = 2;
        while (i < imax) && (err > TOL)

            % updates estimate of root
            x_new = (x_old*f(x_int)-x_int*f(x_old))/(f(x_int)-f(x_old));

            % calculates error
            err = abs(x_new-x_int);
            
            % stores root estimates for next iteration
            x_old = x_int;
            x_int = x_new;

            % increments loop index
            i = i+1;

        end

        % returns root
        root = x_new;
        
    end
      
end