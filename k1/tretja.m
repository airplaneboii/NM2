f = @(x) x./(1 + 16.*x.^2);
df = @(x) (1-16.*x.^2)./((1.+16.*x.^2).^2);
n = 3;
x = repelem(-1:n, 2);
f_x = [];
df_x = [];

for i = 1:10
    f_x = [f_x, f(x(i))];
    df_x = [df_x, df(x(i))];
end

p = deljene_dif(x, f(x), df(x));

y = repelem(-1:1, 2);
z = repelem(1:3, 2);

q = deljene_dif(y, f(y), df(y));
qq = deljene_dif(z, f(z), df(z));

qqq = flip(q, 1);
qqqq = flip(qq, 1);
polyval(qqqq, 2.5)-polyval(qqq, 0.25);
polyval(qq, 2.5)-polyval(q, 0.25);

f(2.5) - f(0-25)




