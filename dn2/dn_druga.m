f = @(x) sin(x);
a = 0;
b = pi;


rez_prb = zeros(1,5);
rez_nap = zeros(1,5);
rez_eks_prb = zeros(1,5);
for k = 1:5
    m = 2^k;
    [rez_prb(k), rez_nap(k), rez_eks_prb(k)] = richardson(f, a, b, m);
end

%rez_prb
%abs(rez_nap)
%rez_eks_prb