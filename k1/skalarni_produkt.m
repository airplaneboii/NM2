function v = skalarni_produkt(f, g, a, b)
% Funkcija skalarni_produkt izracuna skalarni produkt funkcij f in g 
% kot integral produkta na intervalu [a,b].
%
% Vhod:
%   f, g    funkciji, katerih skalarni produkt racunamo
%   a, b    mejni tocki intervala, na katerem racunamo skalarni produkt
%
% Izhod:
%   v       izracunan skalarni produkt funkcij f in g
%
    h = @(x) f(x).*g(x);
    v = integral(h, a, b, ArrayValued=true);
end
