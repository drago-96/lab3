function Y = specchio_cil(X)
  % function Y = specchio_cil(X)
  % trasforma l'immagine X nella sua riflessa tramite uno specchio cilindrico
  m = size(X,1); n = size(X,2); c = size(X,3);
  Y=uint8(zeros(m,n,c));
  for i=1:n
    if (i==n/2)
      ind = n/2;
    else
      ac=acot((n-2*i)/n);
      if (ac<0)
        ac = ac+pi;
      end
      ind = round(n*ac/pi);
    end
    for j=1:c
      Y(:,i,j)=X(:,ind,j);
    end
  end