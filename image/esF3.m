X=imread('dragor.jpg');
%imshow(X)
[n,m,l]=size(X);
j = [0:n-1];
f1= 1-cos(3*pi/2 + pi*j/n);
j = [0:m-1];
f2= 1-cos(3*pi/2 + pi*j/m);

Y=filtra(X,f1,f2);
mx = max(max(max(Y)));
f = 300/mx;
Y=Y*f;%+70*ones(n,m,3);
imshow(Y);
imwrite(Y,'drago2_f.jpg');