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
    skalarni_produkt(F, g, a, b)
end