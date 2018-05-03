function primes = crivello(n)
  primes = ones(n,1);
  primes(1)=0;
  m = sqrt(n);
  for i=2:m
    if primes(i)==1
      primes([2*i:i:n])=0;
    end
  end