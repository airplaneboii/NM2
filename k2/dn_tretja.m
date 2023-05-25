f = @(x,y) y + 15 * exp(x) .* cos(15*x);

a = 0;
b = 1;
x0 = 0;
y0 = 0;
tol = 1e-3;

% a) trapezna
for r = 0:4
    h = 0.1 * 2^(-r);
    n = (b-a)/h;
    x = linspace(a, b, n+1);%a:h*2^(-r):b;
    
    if r < 2
        t = trapezna(x, f, y0, tol);
        %t
    else
        t = trapezna(x, f, y0, tol);
        %t(1,end)
    end
end

% b) rk4
for r = 0:4
    h = 0.1 * 2^(-r);
    n = (b-a)/h;
    x = linspace(a, b, n+1);

    if r < 2
        rk4(x, f, y0)
    else
        t = rk4(x, f, y0);
        t(1,end)
    end
end

