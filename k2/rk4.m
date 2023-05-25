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
    y = zeros(length(y0), length(x));
    y(:, 1) = y0;
    h = x(2) - x(1);

    for i = 1:length(x)-1
        k = zeros(4);
        k(1) = h * f(x(i), y(:,i));
        k(2) = h * f(x(i) + (1/2)*h, y(:,i) + (1/2)*k(1));
        k(3) = h * f(x(i) + (1/2)*h, y(:,i) + (1/2)*k(2));
        k(4) = h * f(x(i) + h, y(:,i) + k(3));
        
        y(:, i+1) = y(:, i) + (1/6)*k(1) + (2/6)*k(2) + (2/6)*k(3) + (1/6)*k(4);
    end
end

    
