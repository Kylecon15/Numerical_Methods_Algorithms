## False Position 
* Locates the root of the function by using the false position formula

* Checks to see if there is a sign change to recorrect the bounds to better estimate the root
* program will stop if the max number of iterations or relative error is reached

#### Inputs:
* func = the function being evaluated
* xl = lower guess 
* xu = upper guess
* es = the desired relative error, and when it is achieved the program should stop 
* maxiter = the number of iterations desired 
#### Outputs:
* root = the estimated root location
* fx = the function evaluated at the root location
* ea = the approximate relative error (%)
* iter = how many iterations were performed during the process

