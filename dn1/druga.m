F = @(x) x*exp(-x*(x+2));
%S0 = @(x) 1;
%S1 = @(x) sin(x);
%S2 = @(x) cos(x);
%S3 = @(x) sin(x) * cos(x);

%skalarni_produkt(f, g, 0, 1)

[koef,gram,desna] = aproksimantMNK(F, baza, -1, 1);