function S=RSimpson(f,a,b,n) 

h=(b-a)/n;               % valor de cada subintervalo
x=a:h:b;                 % Criar o vetor x com os valores de a incrementando h até b
s=0;                     % s inicializado a 0

for i=2:n-1              

    if mod(i,2)==0       % se i for par 
       s=s+2*f(x(i));    % soma-se o valor 2 vezes ao s
    else
       s=s+4*f(x(i));    % soma-se o valor 4 vezes ao s 
    end

end

S=h/3*(f(a)+s+f(b));     % Cálculo da regra de Simpson

end