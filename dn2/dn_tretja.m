f = @(x, y) y + 15 * exp(x) * cos(15 * x);
y0 = 0;

a = 0;
b = 0;
h = 0.1;

for r = 0:4
    x = a:h*2^(-r):b;

    trap_y = trapezna(x, f, y0, 1e-3);
end
