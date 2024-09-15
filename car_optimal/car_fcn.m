function u = fcn(x1,x2)

% cost function=integral of (k+mod(u)) from 0 to tf(final time) 
% increase k for faster reaching 0,0

k=.4/3;%user defined epsilon fuel optimal parameter, lesser it is,the lesser fuel req to reach 0,0

z=x1+0.5*x2*abs(x2);

y=  +sqrt(k*(k+2))*(2/(k+4))*x1    +  x2*sqrt(((x2^2)/2)+abs(x1));

%switching logic

if z>0 && y>0
    u=-1;
elseif ( z<0 && y<0)
    u=1;
    
else u=0;
 
  end
end
