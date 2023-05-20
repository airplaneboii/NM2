function p = triosminsko(f, a, b, m)
    % Opis:
    %  Funkcija triosminsko izracuna priblizek za intergral funkcije f na intervalu [a,b] po
    %  sestavljenem 3/8 pravilu.
    %
    % Definicija:
    % p = triosminsko(f, a, b, m)
    %
    % Vhodni podatki:
    %  f        funkcija f v obliki @(x) f(x),
    %  a, b     krajisci intervala,
    %  m        stevilo osnovnih pravil.
    %
    % Izhodni podatek:
    %  p        izracunani priblizek za integral.
    
    % V kolikor podatek o delitvi ni podan izberemo št. delitev 1
    if nargin < 4
       m = 1;
    end

    % Delitev intervala
    x = linspace(a, b, 3*m + 1);

    % Izracun sirine osnovnih pravil
    h = (b - a) / (3 * m);

    % Izracun utezi
    utezi = ones(1, 3*m + 1);
    utezi(2:3:end-1) = 3;
    utezi(3:3:end-1) = 3;
    utezi(4:3:end-1) = 2;
    %utezi(2:3:end) = 3;
    %utezi(4:3:end-2) = 2;

    %utezi

    % Aproksimacija integrala
    p = (3*h/8) * utezi * f(x');

end
