function y = ruota_for(x, p, ang, inv)
  % ruota un’immagine data dalla matrice x attorno al
  % pixel p di un angolo ang in senso antiorario
  m = size(x,1);
  n = size(x,2);
  i0 = p(1); j0 = p(2);
  y = x;
  for ip = 1 : m
    for jp = 1 : n
      if (inv == 1)
        s = sqrt((i0-ip)^2 + (j0-jp)^2)/10 + 0.01;
        a = 6.28/s;
        i = round(i0 + (ip-i0)*cos(a) + (jp-j0)*sin(a));
        j = round(j0 - (ip-i0)*sin(a) + (jp-j0)*cos(a));
      else
        i = round(i0+(ip-i0)*cos(ang)+(jp-j0)*sin(ang));
        j = round(j0-(ip-i0)*sin(ang)+(jp-j0)*cos(ang));
      end
      if(i>0 && i<=m && j>0 && j<=n)
        y(ip,jp,:) = x(i,j,:);
      else
        y(ip,jp,:) = 0;
      end
    end
  end