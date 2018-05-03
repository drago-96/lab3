function bidim_movie(m, k, a, p, v, secs)
  % calcola la vibrazione di una membrana elastica
  % discreta nxn usando l'esponenziale di matrice
  % dato dalla funzione expm
  % La function traccia il grafico animato
  % In INPUT
  % m: massa di ciascuna particella (tutte masse uguali)
  % k: costante elastica (tutte costanti uguali)
  % a: costante di attrito (tutte costanti uguali)
  % p, v: posizione e velocità iniziale
  % secs: numero di secondi

  % costruisco la matrice A
  tic();
  n = size(p,1);
  S = 2*eye(n)- diag(ones(n-1,1),1)-diag(ones(n-1,1),-1);
  K = kron(eye(n),S)+kron(S,eye(n));
  n2 = n^2; A = zeros(2*n2);
  A(1:n2,n2+1:2*n2) = eye(n2);
  A(n2+1:2*n2,n2+1:2*n2) = -(a/m)*eye(n2);
  A(n2+1:2*n2,1:n2) = -(k/m)*K;
  t=toc()

  % formo il vettore delle condizioni iniziali
  p = vec(p); v = vec(v);
  y = [p;v];
  % Simulazione
  nt = round(secs*16000);
  deltat = 1/16000;
  B = expm(deltat*A);
  t = toc()
  
  % traccio posizione iniziale
  V = zeros(n+2,n+2);
  V(2:n+1,2:n+1) = reshape(y(1:n2),n,n);
  mesh(V)
  axis([0,n+2,0,n+2,-20,20])
  disp('premi qualcosa');
  pause
  % Eseguo
  for j=1:nt
    y = B*y;
    V = zeros(n+2,n+2);
    V(2:n+1,2:n+1) = reshape(y(1:n2),n,n);
    mesh(V)
    axis([0,n+2,0,n+2,-20,20])
    pause(0.0001)
  end