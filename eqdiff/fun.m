function z = fun(x,y)
  a=y(1); 
  b=y(2);
  z=zeros(2,1);
  z(1)=b;
  z(2)=-(4*x+1)*b/(2*x+2)+(2*x-1)*(3*a^3+a)/( (4*x^2)*(1+a^2) );