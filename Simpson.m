function I = Simpson(x,y)
% Inputs: 
% x = equally or unequally spaced interval vector
% y = the values of the function with respect to x
% Outputs:
% I = the integral of the vector of function values ‘y’ with respect to ‘x’
% Warning: 
% If the interval is odd then the trapezoidal rule must be used on the last interval 


L = length(x);                                   % Establishes L as the length of the input array

if nargin < 2
    error('at least 2 input arguments required') % if there isn't 2 inputs then there is an error 
end

test = linspace(x(1),x(end),L);            % makes a variable called test that holds an array for if x has a equally spaced interval
Check = test(1,2:end-1) == x(1,2:end-1);   % Checks the variabe test and x to see if each array are equal to each other

if Check ~= ones(1,L-2)
    error('needs to be a equally spaced interval')    % if Check is not completely true then there is an error 
end

I = 0;              % Defining key variables 
f = y;
x1 = x;
b = x(L);
a = x(1);
xE = 0;
xO = 0;
iseven = rem(L, 2) == 0;   % iseven checks to see if the ammount of points on the interval is even or odd

if iseven == 0 
    warning('The last interval will use the trapezoidal rule') % if its not even then the trapezoidal rule will have to be used on the last interval
end

if Check == ones(1,L-2)      % if Check does equal the array of ones then the integral will be calculated
    if iseven ~= 0           % if the ammount of points is even then the Simpsons 1/3 rule will be used over the whole interval
        
        for i = 2:2:L-1       % a for loop to solve for summation of the even interval 
            xE = xE + f(i);
        end
        
        for j = 3:2:L-2      % a for loop to solve for summation of the odd interval
            xO = xO + f(j);
        end
        
        I = ((b-a)*(f(a)+ 4*(xO) + 2*(xE) + f(L)))/(3*L);  % calculates the estimated integral using only Simpsons 1.3 rule
    end
    
    if iseven == 0     % if the number of points in the array is not even 
        
        for i = 2:2:L-1       % a for loop to solve for summation of the even interval
            xE = xE + f(i);
        end
        
        for j = 3:2:L-2       % a for loop to solve for summation of the odd interval
            xO = xO + f(j);
        end
        
        I = (b-a)*(f(a)+ 4*(xO) + 2*(xE))/(3*L) + ((b-(x1(L-1)))*(f(L)+f(L-1)))/2; 
        % calculates the estimated interval using Simpsons and the trapezoidal rule 
    end
end

fprintf('The estimated integral is %d\n', I)  % displays the estimated interval


    

