imm = double(imread('es2.png'));
dom = imm(:,:,2);
mart = imm(:,:,1);
quota = imm(:,:,3);
n = size(imm,1);
m = 20/n^2;
k = 4.0e5;
a = 2.e-2;
p = quota/255;
v = mart/255*10000;
dom = dom ==0;

secs = 2;
rate = 16000;



