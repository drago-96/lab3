function Y = complex_transform(X)
  m = size(X,1); n = size(X,2);
  h = 2/max(m,n); Y = uint8(zeros(m,n,3));
  i0 = round(m/2); j0 = round(n/2); I = sqrt(-1);
  for ip = 1 : m
    for jp = 1 : n
      z = (jp-j0)*h - I*(ip-i0)*h;
      w=fz(z);
      i = round(i0-imag(w)/h);
      j = round(j0+real(w)/h);
      if(1<=i && i<=m && 1<=j && j<=n)
        Y(ip,jp,:) = X(i,j,:);
      else
        Y(ip,jp,:)=0;
      end
    end
  end