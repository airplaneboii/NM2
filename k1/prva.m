f = @(x) 1 - exp(-(((274*x)/(97)) - 1)^2);
x = 1/2;
n = 4;
f_x = f(x);
bern_fx = bernpoly(f, n, x);
abs(f_x - bern_fx);

for i = 1:10000
    bern_fxi = bernpoly(f, i, x);
    if abs(f_x - bern_fxi) < 0.03
        bern_fxi
        break
    end
end