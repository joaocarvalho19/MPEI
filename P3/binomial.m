function binomial = binomial(p,n,k)
 binomial = (factorial(n) / (factorial(k)*factorial(n-k)))*p^k*(1-p)^(n-k);
 endfunction