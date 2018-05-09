function yp=fOAA(x,y)
  yp = zeros(4,1);
  yp(1)=y(3);
  yp(2)=y(4);
  yp(3)=0.1*(y(2)-2*y(1));
  yp(4)=0.1*(3-2*y(2)+y(1));