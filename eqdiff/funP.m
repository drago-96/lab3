function yp = funP(y,x)
  yp = zeros(2,1);
  yp(1) = y(2);
  yp(2) = -2.5*y(2)-9.8;
