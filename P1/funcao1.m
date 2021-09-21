function funcao1(p, n, k, N)
  prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)
  lancamentos = rand(n,N) > p;
  sucessos = sum(lancamentos) <= k;
  probSimulacao= sum(sucessos)/N
endfunction