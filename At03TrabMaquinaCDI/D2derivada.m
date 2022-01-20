function [x,y,dy2dx]=D2derivada(f,a,b,h,y)

x=a:h:b;
n=length(x);

if nargin==4
    y=f(x);
end
 
dy2dx=zeros(1,n);


for i=2:n-1
    
    dy2dx(i)=(y(i+1)-2*y(i)+y(i-1))/(h^2);
    
end
dy2dx(1)=dy2dx(2);


dy2dx(n)=dy2dx(n-1);

end
