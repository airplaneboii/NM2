b = 35/991;

a = 0;
b = 5;
y0 = 1 - b;
x0 = 0;

f = @(x, y) b * exp(x) .* sin(x) + (2*y)/3;

h = 5/50;
x = a:h:b;
tol = 1e-10;
y = trapezna(x, f, y0, tol);
[t, oy] = ode45(f, x, y0);

oy(5) - y(5)


