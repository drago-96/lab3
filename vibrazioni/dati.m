n = 101;
m = ones(n,1)*0.01/n;
k = ones(n+1,1)*1.e6;
theta = 1.e-3*ones(n,1);
p=(n+1)/2;
q = 5;
rate = 16000;
secs = 2;
pickup = [20];

tipo = 0;

y=zeros(n,1);
v=zeros(n,1);
if (tipo==-1) %martelletto
  larg = 4;
  for j=-larg:larg
    v(q-j)=10000*exp(-0.01*j*j);
  end
elseif (tipo==0) %pizzicato
  for i=1:q
    y(i) = i/q;
  end
  for i=q+1:n
    y(i) = 1-(i-q)/(n+1-q);
  end
elseif (tipo==2) %esercizio 2
  p = 34;
  theta(p)=200*theta(1);
  for i=1:q
    y(i) = i/q;
  end
  for i=q+1:n
    y(i) = 1-(i-q)/(n+1-q);
  end
end

