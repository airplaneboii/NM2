f = @(x) exp(-x/67)*sin(8*x);
a = -1/2;
b = 3/2;
S = cell(5, 1);
S{1} = @(x) 1;
S{2} = @(x) x;
S{3} = @(x) x^2;
S{4} = @(x) cos(66*x);
S{5} = @(x) sin(68*x);

[koef, gram, desna] = aproksimantMNK(f, S, a, b);
mean(koef);
norm(gram, "fro") + norm(gram, 1) - norm(gram, 2);

cond_st = cond(gram);
ff = @(x) 0;
for i=1:length(koef)
    ff = @(x) ff(x) + koef(i) * S{i}(x);
end


h = 2/1000;
%Interval = (0:1000);
results = [];
for n = 0:1000
    results = [results, abs(f(-1/2 + n*h)-ff(-1/2 + n*h))];
end
max(results)