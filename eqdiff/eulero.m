function [x,u] = eulero(odefun,slot,y0,h)

  % Risolve sull’intervallo [slot(1),slot(2)] il problema ai valori iniziali:
  % y’(x)=odefun(x,y(x))
  % y(slot(1))=y0
  % usando il metodo di Eulero.
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
  u = zeros(n,1);
  u(1)=y0;
  for i=1:n-1
    u(i+1)=u(i)+h*odefun(x(i),u(i));
  end
  