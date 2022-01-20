function [x,y,dydx]=Progressivas2pontos(f,a,b,h,y)
 
 
 x=a:h:b;
 n=length(x);

 if nargin==4
    y=f(x);
 end
 
 dydx=zeros(1,n);
 
 for i=1:n-1
    dydx(i)=(y(i+1)-y(i))/h;
 end
 
 dydx(n)=(y(n)-y(n-1))/h;
 
end

