function p = simpson(f,a,b,m)
    % Opis:
    %  Funkcija simpson izracuna priblizek za intergral funkcije f na intervalu [a,b] po
    %  sestavljenem Simpsonovem pravilu.
    %
    % Definicija:
    % p = simpson(f,a,b,m)
    %
    % Vhodni podatki:
    %  f        funkcija f v obliki @(x,y) f(x,y),
    %  a,b      krajisci intervala,
    %  m        stevilo osnovnih pravil.
    %
    % Izhodni podatek:
    %  p        izracunani priblizek za integral.

    % V kolikor podatek o delitvi ni podan izberemo št. delitev 1
    if nargin < 4
        m = 1;
    end

    % Delitev intevala
    x = linspace(a, b, 2*m + 1);
    h = (b-a)/(2*m);

    % izracun utezi
    utezi = ones(1, 2*m+1);
    utezi(2:2:2*m) = 4;
    utezi(3:2:2*m-1) = 2;
    %utezi

    % aproksimacija integrala
    p = h/3 * utezi * f(x');
end