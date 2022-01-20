function [x,y,dydxDFP3]=Progressiva3pontos(f,a,b,h,y)
 
 
 x=a:h:b;
 n=length(x);

 if nargin==4
    y=f(x);
 end
 
 dydxDFP3=zeros(1,n);
 
 
 for i=1:n-2
    dydxDFP3(i)=(-3*y(i)+4*y(i+1)-y(i+2))/(2*h);
 end
 
 dydxDFP3(n-1)=(y(n-3)-4*y(n-2)+3*y(n-1))/(2*h);
 dydxDFP3(n)=(y(n-2)-4*y(n-1)+3*y(n))/(2*h);
 
end