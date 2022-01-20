function T=RTrapezios(f,a,b,n) 

h=(b-a)/n;                      % valor de cada subintervalo
x=a:h:b;                        % Criar o vetor x com os valores de a incrementando h até b
s=0;                            % s inicializado a 0

for i=2:n-1                     
   s=s+f(x(i));                 % soma-se x ao valor de s
end

T=h/2*(f(a)+2*s+f(b));          % Cálculo da regra de Trapezios

end