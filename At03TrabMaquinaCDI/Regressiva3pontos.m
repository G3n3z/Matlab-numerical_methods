function [x,y,dydxDFR3]=Regressiva3pontos(f,a,b,h,y)
 
 
 x=a:h:b;
 n=length(x);

 if nargin==4
    y=f(x);
 end
 
 dydxDFR3=zeros(1,n);
 
 dydxDFR3(1)=(-3*y(1)+4*y(2)-y(3))/(2*h);
 dydxDFR3(2)=(-3*y(2)+4*y(3)-y(4))/(2*h);
 for i=3:n
    dydxDFR3(i)=(y(i-2)-4*y(i-1)+3*y(i))/(2*h);
 end
 
 
 
end