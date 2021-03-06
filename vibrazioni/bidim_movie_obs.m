function bidim_movie_obs(m, k, a, p, v, secs, dom)

  % costruisco la matrice A
  n = size(p,1);
  S = 2*eye(n)- diag(ones(n-1,1),1)-diag(ones(n-1,1),-1);
  K = kron(eye(n),S)+kron(S,eye(n));
  % calcolo la sottomatrice relativa ai punti del dominio
  ind = find(dom==1);
  n2 = length(ind);
  Kc = K(ind,ind);
  A = zeros(2*n2);
  A(1:n2,n2+1:2*n2) = eye(n2);
  A(n2+1:2*n2,n2+1:2*n2) = -(a/m)*eye(n2);
  A(n2+1:2*n2,1:n2) = -(k/m)*Kc;
  % formo il vettore delle condizioni iniziali
  p=vec(p); p = p(ind);
  v=vec(v); v = v(ind);
  y = [p;v];
  % Simulazione
  nt = round(secs*16000);
  deltat = 1/16000;
  B = expm(deltat*A);
  % traccio posizione iniziale
  V = zeros(n+2,n+2);
  w=ones(n^2,1); w(ind) = y(1:n2);
  V(2:n+1,2:n+1) = reshape(w,n,n);
  % traccio il grafico della configurazione iniziale
  figure(1,"position",get(0,"screensize"))
  mesh(V)
  axis([0,n+2,0,n+2,-5,5])
  disp('Premere un tasto per iniziare la simulazione')
  pause(10);
  for j=1:nt
    y = B*y;
    w=ones(n^2,1); w(ind) = y(1:n2);
    V(2:n+1,2:n+1) = reshape(w,n,n);
    % traccio il grafico della configurazione all’istante generico
    mesh(V)
    axis([0,n+2,0,n+2,-5,5])
    pause(0.0001)
  end