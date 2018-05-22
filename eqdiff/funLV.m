function yp = funLV(x,y,p)
  yp = zeros(2,1);
  alpha=[0 0];
  beta=[0 0];
  gamma=[0 0];
  if p==1 %predatori
    alpha=[2 -0.2];
    beta=[0.1 -0.1];
    gamma=[0.2 0];
  elseif p==0 %standard
    alpha=[3 2];
    beta=[0.5 0.5];
    gamma=[0.7 0.5];
  elseif p==3 % batteri Gause
    g1=0.21827;
    g2=0.06069;
    alpha=[g1 g2];
    beta=[g1/13 g2/13.2118];
    gamma=[g1/3.71429 g2/5.8];
  elseif p==4 % es2
    alpha=[2 -1];
    beta=[0 -0.001];
    gamma=[0.001 0];
  elseif p==5 % leoni gnu
    alpha=[0.405 -1.5];
    beta=[0 -0.125];
    gamma=[0.81 0];
  end
  yp(1) = y(1)*(alpha(1)-beta(1)*y(1)-gamma(1)*y(2));
  yp(2) = y(2)*(alpha(2)-beta(2)*y(1)-gamma(2)*y(2));