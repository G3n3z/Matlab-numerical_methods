function [x,y,dydxDFC3]=Centrada3pontos(f,a,b,h,y)
 
 x=a:h:b;
 n=length(x);

 if nargin==4
    y=f(x);
 end
 
 dydxDFC3=zeros(1,n);
 
 dydxDFC3(1)=(-3*y(1)+4*y(2)-y(3))/(2*h);
 
 for i=2:n-1
    dydxDFC3(i)=(y(i+1)-y(i-1))/(2*h);   
 end
 
 dydxDFC3(n)=(y(n-2)-4*y(n-1)+3*y(n))/(2*h);
 
end