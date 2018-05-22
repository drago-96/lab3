X=imread('mimosar.jpg');
%imshow(X)
[n,m,l]=size(X);
j = [0:n-1];
f1= 1-cos(3*pi/2 + pi*j/n);
j = [0:m-1];
f2= 1-cos(3*pi/2 + pi*j/m);

Y=filtra(X,f1,f2);
Y=Y+30*ones(n,m,3);
imshow(Y);