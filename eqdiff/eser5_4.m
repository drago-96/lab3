caso = input("Quale caso vuoi plottare? ");

switch(caso)
  case 1
    m=1;h=10;k=0;fext=@(x)0;y0=[1;0];T=[0 60];
  case 2
    m=1;h=10;k=0.5;fext=@(x)0;y0=[1;0];T=[0 60];
  case 3
    m=1;h=10;k=10;fext=@(x)0;y0=[1;0];T=[0 60];
  case 4
    m=2;h=10;k=0.75;fext=@(x)25;y0=[2;0];T=[0 60];
  otherwise
    disp("Devi scegliere una numero tra 1 e 4!");
endswitch
    
fOA=@(x,y) [y(2);(-h*y(1)-k*y(2)+fext(x))/m];
[x,y] = eulero(fOA,T,y0,0.01);
plot(x,y(1,:),x,y(2,:));
legend("pos","vel");

