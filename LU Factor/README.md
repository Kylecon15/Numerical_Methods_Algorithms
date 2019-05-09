## LU Factorization
* The function luFactor determines the LU Factorization of a square matrix
* By using partial pivoting and decomposition we can find the lower and upper triangular matrices
* First we check to see if the given matrix is square
* Then we iterate for every value we need to find depending on how big the matrix is, and pivot when it's only necessary 
* Lastly we obtain all three matrices after everything is placed in their proper places
#### Inputs:
* A = a coefficient matrix
#### Outputs: 
* L = lower triangular matrix
* U = upper triangular matrix
* P = the pivot matrix
