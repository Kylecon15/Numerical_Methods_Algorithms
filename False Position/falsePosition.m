function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
% falsePosition: locates the roots of the function
% uses the false position method to find roots of the function
% Inputs:
% func = the function being evaluated
% xl = lower guess
% xu = upper guess
% es = the desired relative error (default to 0.0001%)
% maxiter = the number of iterations desired ( default to 200)
% Outputs:
% root = the estimated root location
% fx = the function evaluated at the root location
% ea = the approximate relative error (%)
% iter = how many iterations were performed 

if nargin < 3
    error('You need at least 3 input arguments to determine the root of the function')  % if user gives less than 3 inputs there is an error 
end
sign_switch = func(xl)*func(xu);
if sign_switch > 0
    error('no sign change detected, choose new bounds'); % if user gives bounds that are incorrect or indicates no sign change then there is an error
end
if nargin < 4         % if user gives 3 inputs then the stopping criteria and the maximum # of iterations are defaulted
    es = 0.0001;
    maxiter = 200;
end
if nargin < 5         % if user gives 4 inputs then maximum # of iterations is defaulted
    maxiter = 200;
end

iter = 0;             % establishing that zero iterations has been performed
ea = 100;             % establishing the aprroximate error being 100% 
xr = xl;              % establsihing that the first root will be at the lower bound 
tic                   % showing how much time the program takes to complete its task
while (1)
    xr_prev = xr;                                                     % establishing the previous estimate at the root to later find the approximate error
    xr = xu - ((func(xu)*(xl - xu))/((func(xl)) - (func(xu))));       % equation to estimate xr
    iter = iter + 1;                                                  % adds 1 to iter to show how many iterations have been performed 
    if xr ~= 0                                                      
        ea = abs((xr - xr_prev)/xr)*100;                              % if the estimate at the root is not zero then the approximate error is calculated 
    end
    if (func(xl) < 0 && func(xr) < 0) || (func(xl) > 0 && func(xr) > 0) % if the function evaluated at xl and xr are either both positive or negative then xl is now xr
        xl = xr;
    elseif (func(xu) > 0 && func(xr) > 0) || (func(xu) < 0 && func(xr) < 0) % if the function evaluated at xu and xr are either both positive or negative then xu is now xr
        xu = xr;
    else
        ea = 0;                                                              % otherwise, the approximate error is 0 and the program ends
    end
    if ea <= es || iter >= maxiter % if the approximate error is smaller than the stopping criteria OR the # of iterations is larger than maxiter than the program ends
        break
    end
end
root = xr;
fx = func(xr);
fprintf('The estimated root location is %d\n', root)                % displays all the variables in the command window
fprintf('The function evaluated at the root location %d\n', fx)
fprintf('The approximate relative error %d\n', ea)
fprintf('The number of iterations desired %d\n', iter)
toc





        


    
    
    
    
    
    
