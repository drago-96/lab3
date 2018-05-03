function res = trova_pixel(X,val)
  c = zeros(500,500,3);
  c(:,:,1)=val(1)*ones(500);
  c(:,:,2)=val(2)*ones(500);
  c(:,:,3)=val(3)*ones(500);
  d = X==c;
  e = d(:,:,1)+d(:,:,2)+d(:,:,3);
  f = e==3;
  res = find(f);
  