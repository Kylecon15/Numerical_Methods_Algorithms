function [L,U,P] = luFactor(A)
% The function luFactor determines the LU Factorization of a square matrix
% by using partial pivoting and decomposition
% Inputs:
% A = a coefficient matrix
% Outputs: 
% L = lower triangular matrix
% U = upper triangular matrix
% P = the pivot matrix

if nargin < 1                                         % Makes it so the user must supply a matrix A
    error('You need at least one input value for A') 
end
[r,c] = size(A);
if r~=c                                  % User must give a square matrix so it can pivoted correctly
    error('The Matrix must be square')
end

L = eye(r);       % establishes the Lower triangular matrix as an identity matrix
P = L;            % then we have it so the pivot matrix equals the L matrix initially
U = A;            % initially sets up the Upper triangular matrix as the A matrix given by the user 
tic
for n = 1:c                        % a for loop that will iterate for as many times there are rows or columns 
    
    [Piv, k] = max(abs(U(n:c,n)));  % Piv, k is looking for what row has the abosolute max value in that column
    k = k+n-1;                     % Establishes what column we are currently using
    
    if k~=n                        % if the largest value is already in the row we want then there is no need to pivot
        p = U(n,:);                % p is a variable that is place holder for the row that we want to pivot
        U(n,:) = U(k,:);           
        U(k,:) = p;                % now we make the row we want equal to p
        
        p = P(n,:);                % we now want to change the pivot matrix to how we did above for the U matrix
        P(n,:) = P(k,:);
        P(k,:) = p;
        
        if n >= 2                      % this code will only initiate when we are in the second column 
            p = L(n,1:n-1);            % the p variable is equal to a certain row and column in the L matrix
            L(n,1:n-1) = L(k,1:n-1);   % now we are pivoting the L matrix like we did above for the U and P matrices
            L(k,1:n-1) = p;
        end
    end
    for g = n+1:c                           % a for loop that iterates every row we go down to eliminate our desired numbers
        L(g,n) = U(g,n)/U(n,n);             % the number that is used to eliminate our desired coefficients in the row that we want that was found with k
        U(g,:) = U(g,:) - L(g,n)*U(n,:);    % the U matrix is subtracted from the row that we use to eliminate our desired coefficients
        
    end                                     % then the for loop ends and begins again on the next column 
end
toc
fprintf('The Upper Triangular Matrix is: \n')                    % prints what the matrix name is 
disp(U)
fprintf('The Pivot matrix used for Gaussian Elimination is: \n')
disp(P)
fprintf('The Lower Triangular Matrix is: \n')
    
 
    
    


    
    
    
    
    







