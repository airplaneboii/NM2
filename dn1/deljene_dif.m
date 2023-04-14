function d = deljene_dif(X,Y,dY)
% Funkcija deljene_dif izracuna tabelo deljenih diferenc za dane vhodne podatke.
%
% Vhod:
%   X    seznam interpolacijskih tock
%   Y    seznam vrednosti funkcije
%   dY   seznam vrednosti prvega odvoda funkcije
%
% Izhod:
%   d    izracunane deljene diference (koeficienti polinoma)
    
    n = length(X)-1;
    M = zeros(n+1);
    M(:,1) = Y';
    
    for j=2:n+1
        for i=j:n+1
            if (X(i-j+1) == X(i))
                M(i, j) = dY(i);
            else
                M(i,j) = (M(i,j-1)-M(i-1,j-1))/(X(i)-X(i-j+1));
            end
        end
    end
    d=diag(M);

end