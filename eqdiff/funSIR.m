function yp = funSIR(x,y)
  yp = zeros(3,1);
  yp(1) = -0.01*y(1)*y(2);
  yp(2) = 0.01*y(1)*y(2)-0.1*y(2);
  yp(3) = 0.1*y(2);