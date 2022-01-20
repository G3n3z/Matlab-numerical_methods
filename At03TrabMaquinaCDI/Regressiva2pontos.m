function [x,y,dydxDFR2]=Regressiva2pontos(f,a,b,h,y)
 
 
 x=a:h:b;
 n=length(x);

 if nargin==4
    y=f(x);
 end
 
 dydxDFR2=zeros(1,n);
 
 dydxDFR2(1)=(y(2)-y(1))/h;
 for i=2:n
    dydxDFR2(i)=(y(i)-y(i-1))/h;
 end
 
 

end