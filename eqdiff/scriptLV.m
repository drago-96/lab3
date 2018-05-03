p=4;

if p==0
  y0 = [2;5];
  [x,y] = eulero(@funLV,[0 10],y0,0.1);
  plot(x,y(1,:),x,y(2,:),'r.')
elseif p==1
  y0 = [1;1];
  [x,y] = eulero(@funLV,[0 60],y0,0.1);
  plot(x,y(1,:),x,y(2,:),'r.')
elseif p==2
  y0 = [199;1;0];
  [x,y] = eulero(@funSIR,[0 20],y0,0.1);
  plot(x,y(1,:),x,y(2,:),'r',x,y(3,:),'g')
end