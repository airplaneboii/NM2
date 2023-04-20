F = @(x) x*exp(-x*(x+2));
baza = cell(4, 1);
baza{1} = @(x) 1;
baza{2} = @(x) sin(x);
baza{3} = @(x) cos(x);
baza{4} = @(x) sin(x) * cos(x);

[koef,gram,desna] = aproksimantMNK(F, baza, -1, 1);

cond_st = cond(gram)
ff = @(x) 0;
for i=1:length(koef)
    ff = @(x) ff(x) + koef(i) * baza{i}(x);
end
x = 0.5;
abs(F(x) - ff(x))
