function b = boustrophedon(m)
  b = ones(2*m-1,2*m-1);
  k = 1;
  c = m;
  sgn = -1;
  for i=1:2*m-1 % righe
    first = 2*( i*(i-1)/2+1 )-1;
    last = 2*( i*(i+1)/2 )-1;
    if sgn>0
      cr = [first:2:last];
      b(i,c:c+i-1)=cr;
      c = c-1;
    else
      cr = [last:-2:first];
      b(i,c:c+i-1)=cr;
    end

    sgn = -sgn;
  end