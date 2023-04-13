function [koef,gram,desna] = aproksimantMNK(F, baza, a, b)
% Funkcija aproksimantMNK izračuna aproksimant za funkcijo F po metodi 
% najmanjših kvadratov (MNK) v dani bazi za zvezni skalarni produkt na 
% intervalu [a,b].
%
% Vhod:
%   F       funkcija, ki jo aproksimiramo
%   baza    bazne funkcije
%   a, b    mejni točki intervala, na katerem aproksimiramo funkcijo F
%
% Izhod:
%   koef    vektor koeficientov, ki določajo linearno kombinacijo funkcij 
%           iz baze za aproksimacijo funkcije F
%   gram    Gramova matrika, ki vsebuje skalarne produkte baznih
%           funkcij
%   desna   vektor desne strani, ki vsebuje skalarne produkte
%           funkcije F z baznimi funkcijami
%

    % prihranimo nekaj  kalkulacij
    n = length(baza);

    % pripravimo potrebne matrike
    gram = zeros(n);
    desna = zeros(n, 1);

    % izračunamo elemente matrik
    for i = 1:n
        for j = 1:n
            gram(i, j) = skalarni_produkt(baza(i), baza(j), a, b);
        end
        desna(i, 1) = skalarni_produkt(F, baza(i), a, b);
    end
    
    % rešimo sistem enačb
    koef = gram\desna;

end