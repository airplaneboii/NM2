
% a)
f = @(x) exp(-x.^2);
a = 0;
b = 1;

% Točna vrednost integrala
I = integral(f,a,b,'RelTol',1e-10, 'AbsTol', 1e-10);

rezultati_simps = zeros(1,10);

for m = 1:10
    % Vrednost približka integrala z Simpsonovo metodo
    IS = simpson(f,a,b,m);
    rezultati_simps(m) = IS;
end

% b)
rezultati_trios = zeros(1,10);
%triosminsko(f,a,b,5)
for m = 1:10
    % Vrednost približka integrala s triosminsko metodo
    IS = triosminsko(f,a,b,m)
    rezultati_trios(m) = IS;
end
