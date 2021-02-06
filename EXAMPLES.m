%% Copyright (c) 2021 Tamas Kis

% Examples for using the secant_method function.



%% SCRIPT SETUP

% clears variables and command window, closes all figures
clear;
clc;
close all;



%% EXAMPLE #1

% f(x) = x^2-1
f = @(x) x^2-1;
  
% finds first root of f(x) using the secant method
root1 = secant_method(f,-10)

% finds second root of f(x) using the secant method
root2 = secant_method(f,10)



%% EXAMPLE #2

% assigns function handle to g(x)
g = @(x) gx(x);

% finds root of g(x), where g(x) = h(m(x)), h(x) = 5x^2+4, and 
% m(x) = cosh(sqrt(x)), with the initial guess x0 = 5
root = secant_method(g,5)

% plots the intermediate root estimates
plot(secant_method(g,5,[],[],'all'),'k*','markersize',9,'linewidth',1.5);
grid on;
xlabel('Iteration','interpreter','latex','fontsize',18);
ylabel('Root Estimate','interpreter','latex','fontsize',18);

% defines g(x)
function g = gx(x)
    m = cosh(sqrt(x));
    h = 5*m^2-4;
    g = h;
end