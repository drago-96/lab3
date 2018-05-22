function yp = funSIR(x,y)
  a=1;
  if a==0
    yp = zeros(3,1);
    yp(1) = -0.01*y(1)*y(2);
    yp(2) = 0.01*y(1)*y(2)-0.1*y(2);
    yp(3) = 0.1*y(2);
  elseif a==1
    yp = zeros(2,1);
    r=0.0001;
    yp(1) = -r*y(1)*y(2);
    yp(2) = r*y(1)*y(2);
  end
