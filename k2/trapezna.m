function y = trapezna(x,f,y0,tol) 
% Opis:
%  Funkcija trapezna vrne numericno resitev navadne diferencialne enacbe
%  y' = f(x,y) pri pogoju y(x(1)) = y0, ki je izracunana s trapezno metodo.
%
% Definicija:
% y = trapezna(x,f,y0,tol) 
%
% Vhodni podatki:
%  x    vrstica delilnih tock,
%  f    funkcija f v obliki @(x,y) f(x,y),
%  y0   zacetna vrednost resitve,
%  tol  toleranca za zaustavitevni pogoj pri navadni iteraciji.
%
% Izhodni podatek:
%  y    vrstica numericnih priblizkov za vrednosti tocne resitve v delilnih
%       tockah.

    y = zeros(length(y0), length(x));
    y(:,1) = y0;

    for i = 2:length(x)
        y(:,i) = navadnaIteracija(x(i-1), x(i), y(i-1), f, tol);
    end

end
