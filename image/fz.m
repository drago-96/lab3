function w = fz(z)
  if z~=0
    %w = z*(z/abs(z))^3;
    %w = z-(z^3-1)/(2*z^2);
    w = z*exp(-2*pi*I/3);
  else
    w = 0;
  end