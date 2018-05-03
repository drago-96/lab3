function [x,u] = RK4(odefun,slot,y0,h)

  % Risolve sull’intervallo [slot(1),slot(2)] il problema ai valori iniziali:
  % y’(x)=odefun(x,y(x))
  % y(slot(1))=y0
  % usando il metodo di Runge-Kutta classico.
  %
  % Dati di INPUT:
  % odefun funzione da integrare
  % slot intervallo di integrazione
  % y0 condizione iniziale
  % h passo di discretizzazione
  %
  % Dati di OUTPUT:
  % x nodi equispaziati della griglia
  % u soluzione numerica in corrispondenza dei nodi
  
  x = [slot(1):h:slot(2)];
  n = floor((slot(2)-slot(1))/h)+1;
  m = size(y0,1);
  u = zeros(m,n);
  u(:,1)=y0;
  
  for i=1:(n-1)
    F1=odefun(x(i),u(:,i));
    F2=odefun(x(i)+h/2,u(:,i)+h*F1/2);
    F3=odefun(x(i)+h/2,u(:,i)+h*F2/2);
    F4=odefun(x(i)+h,u(:,i)+h*F3);
    u(:,i+1)=u(:,i)+h*(F1+2*F2+2*F3+F4)/6;
  end