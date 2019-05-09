function pr = prime(m,n)
% prime determines all prime numbers between m and n
%    Inputs 
%       m - an integer
%       n - an integer where n>m
%    Outputs:
%       pr - a vector whose elements are the prime numbers between 1 and n
%
if n <= 0 || m <=0
    error('The input argument must be a positive integer'); % if n or m are less than zero than there is an error
elseif m > n
    error('The value of n must be a larger value than m')   % if the lower bound s larger than the upper bound than there is an error
end

    c = 1;           % sets the variable for prime # at 1
    p = 2;           % the first # that divides the first number given 
    i = m;           % index's the the first number given to look through all the number between m and n
    pr = (0);        % sets the function equal to zero prime #'s
    
    while i < n      % a while loop for everytime the index is less than the upper bound
        
        while p < i  % a while loop for everytime the # dividing the number given is less than the index
            
            if rem(i,p) == 0   % when the remainder is equal to zero and it's true then the loop breaks for the next #
                break
            else 
                p = p + 1;     % adds 1 more the # dividing the number being looked at to see if it is a prime
            end
        
        if p == i              % when the # dividing the index is equal to the index # then it is a prime #
            pr(c) = i;         % puts the prime number in the array
            c = c + 1;         % moves to the next spot in the array for the next prime number to be placed in
        end
        
        end
        p = 2;                 % resets the # dividing the index number
        i = i + 1;             % adds one to the index to keep the loop going 
    end
    disp('These are your prime numbers between m and n') % displays a message showing all of the prime #'s between m and n
end

    
    
        
        
        
        
            
        


    
    
        
        
        