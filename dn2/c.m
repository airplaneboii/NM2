function y = %rk4(x, f, y0)
% Opis:
%  Funkcija rk4 vrne numericno resitev sistema navadnih diferencialnih enacb
%  y' = f(x, y) pri pogoju y(x(1)) = y0, ki je izracunana z Runge-Kutta metodo stopnje 4.
%
% Definicija:
%  y = rk4(x, f, y0)
%
% Vhodni podatki:
%  x    vrstica delilnih tock,
%  f    funkcija f v obliki @(x, y) f(x, y),
%  y0   zacetna vrednost resitve, stolpec dimenzije (n x 1), kjer je n stevilo enacb sistema.

n = length(y0);
m = length(x);
y = zeros(n, m);
y(:, 1) = y0;
h = x(2) - x(1);

for i = 1:m-1
    k = zeros(n, 4);
    k(:, 1) = h * f(x(i), y(:, i));
    k(:, 2) = h * f(x(i) + (1/2)*h, y(:, i) + (1/2)*k(:, 1));
    k(:, 3) = h * f(x(i) + (1/2)*h, y(:, i) + (1/2)*k(:, 2));
    k(:, 4) = h * f(x(i) + h, y(:, i) + k(:, 3));

    y(:, i+1) = y(:, i) + (1/6)*k(:, 1) + (2/6)*k(:, 2) + (2/6)*k(:, 3) + (1/6)*k(:, 4);
end

end
