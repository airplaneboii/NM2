f = @(x) 34 * sin(x.^2) .* exp(x) + (sqrt(x) .* cos(x))/2;
a = 1;
b = 4;

%m10 = simpson(f, a, b, 10);
%m11 = simpson(f, a, b, 11);

%m10 - m11

i = integral(f, a, b);
%for m = 3:1000
%    k = triosminsko(f, a, b, m);
%    if abs(k - i) < 1e-4
%        h = (b-a)/(3*m)
%        break
%    end
%end

m10 = (b-a)/(3*(1/10));
m5 = (b-a)/(3*(1/5));


F5 = triosminsko(f, a, b, 5);
F10 = triosminsko(f, a, b, 10);

abs(abs(F5 - F10)- abs(i - F10))


%real = abs(i - F10)
%oc = abs(abs(F10) - abs(F5))

%abs(real - oc)