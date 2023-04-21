f = @(x) (cos(2+2*x)).^2;
df = @(x) - 4 * cos(2+2*x) .* sin(2+2*x);

n = 3;
x = repelem(0:n, 2) / 3;

d = deljene_dif(x, f(x), df(x))
t = [0.25, 0.95];
v = horner(x, d, t)

f(t(1))
f(t(2))
;
