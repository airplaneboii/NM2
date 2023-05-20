function y =rk4(x,f,y0)
% Opis:
%  Funkcija rk4 vrne numericno resitev navadne diferencialne enacbe
%  y' = f(x,y) pri pogoju y(x(1)) = y0, ki je izracunana z Runge-Kutta metodo stopnje 4.
%
% Definicija:
%  y = rk4(x,f,y0)
%
% Vhodni podatki:
%  x    vrstica delilnih tock,
%  f    funkcija f v obliki @(x,y) f(x,y),
%  y0   zacetna vrednost resitve.
%
% Izhodni podatek:
%  y    vrstica numericnih priblizkov za vrednosti tocne resitve v delilnih
%       tockah.
end

    
