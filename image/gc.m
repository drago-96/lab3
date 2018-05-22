function x = gc(b, psf, passi, reg)
  % calcolo la psf associata a A^T
  psft = psf(end:-1:1, end:-1:1); [mb,nb,i] = size(b);
  b = double(b); r = b; y = zeros(mb,nb,i);
  for iter=1:passi
    rho = sum(sum(r.*r));
    if iter==1
      p = r;
    else
      beta = rho/rhop; p = r + beta*p;
    end
    tmp = conv_rgb(p, psft, 'full'); q = conv_rgb(tmp, psf, 'valid');
    q = q+p*reg;
    alpha = rho/sum(sum(p.*q)); y = y + alpha*p;
    r = r-alpha * q; rhop = rho;
    nor = sqrt(sum(sum(r.*r)))/(mb*nb);
    %printf('residuo=%e\n',nor)
  end
  x = conv_rgb(y, psft, 'full'); x = uint8(x);