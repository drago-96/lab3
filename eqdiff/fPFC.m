function yp=fPFC(x,y)
  yp = zeros(4,1);
  yp(1)=y(3);
  yp(2)=y(4);
  r = (y(1)^2+y(2)^2)^1.5;
  yp(3)=-3*y(1)/r;
  yp(4)=-3*y(2)/r;