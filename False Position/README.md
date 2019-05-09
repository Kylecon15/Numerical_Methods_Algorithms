## False Position 
* Locates the root of the function by using the false position formula

#### Inputs:
* func = the function being evaluated
* xl = lower guess 
* xu = upper guess
* es = the desired relative error (default to 0.0001%)
* maxiter = the number of iterations desired ( default to 200)
#### Outputs:
* root = the estimated root location
* fx = the function evaluated at the root location
* ea = the approximate relative error (%)
* iter = how many iterations were performed 

