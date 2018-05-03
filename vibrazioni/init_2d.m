n = 50;
m = 20/n^2;
k = 4.0e5;
a = 2.e-2;
p = zeros(n,n);
v = p;
q = 25;
r = 5;
le = 4;
for i=-le:le
  for j=-le:le
    v(q+i,r+j) = 1.e4*exp(-0.07*(i^2+j^2));
  end
end
secs = 2;
rate = 16000;

dom = ones(n);
%dom(1:n/2,1:n/2) = 0;

%dom(1:15,19:21) = 0;
%dom(25:40,19:21) = 0;

dom(10:40,15:17) = 0;

dom(1:15,30:32) = 0;
dom(35:50,30:32) = 0;
dom(20:30,30:32) = 0;


imm = double(imread('es3.png'));
dom = imm(:,:,1); 