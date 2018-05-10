function yp=fGS(x,y)
  m = 1; g = 9.8;
  F=[0;0;-m*g];

  yp = zeros(6,1);
  a1=y(1:3); a2=y(4:6);
  a2p=1/m*(F-(2*m*norm(a2)^2+2*a1'*F)/(4*norm(a1)^2)*2*a1 );
  a1p=a2;
  yp=[a1p;a2p];
  norm(a1p)^2-1;