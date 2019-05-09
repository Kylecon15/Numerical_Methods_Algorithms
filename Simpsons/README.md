## Simpsons Method
* Estimates the integral of the function by using Simpsons 1/3 rule
* First we see if the given interval is equally spaced across all points and whether it has an even or odd number of points within the array
#### Inputs: 
* x = equally or unequally spaced interval vector
* y = the values of the function with respect to x
#### Outputs:
* I = the integral of the vector of function values 'y' with respect to 'x'
* Warning: If the interval is odd then the trapezoidal rule must be used on the last interval 
