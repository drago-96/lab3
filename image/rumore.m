X=imread('drago2.jpg');
[m n t]=size(X);

S=2*pi*[0:m-1]'*(250*ones(1,n)+5*rand(1,n))/m;
T=2*pi*[0:n-1]'*(250*ones(1,m)+5*rand(1,m))/m;
R=30*(sin(S)+sin(T)');

Y=X+cat(3,R,R,R);
imshow(Y);
imwrite(Y,'dragor.jpg');