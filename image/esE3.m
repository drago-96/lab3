X=imread('catto.png');
%imshow(X);
A=diag(ones(51,1))/101;
psf=A+rot90(A);
psf(25,25)=1/101;
b=sfoca_conv(X,psf);
c=gc(b,psf,500,0.0001);
imshow(c);

