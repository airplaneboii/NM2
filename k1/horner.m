function v = horner(X,d,t)
% Funkcija horner izracuna vrednost interpolacijskega polinoma p (zapisanega v Newtonovi obliki).
%
% Vhod:
%   X    seznam interpolacijskih tock
%   d    koeficienti polinoma p (deljene diference)
%   t    tocke, v katerih racunamo vrednost polinoma p
%
% Izhod:
%   v    vrednosti polinoma p v tockah iz seznama t
%
    n = length(X)-1;
    v = d(n+1);
    for i = n:-1:1
        v = d(i)+(t-X(i)).*v;
    end
end

    
    