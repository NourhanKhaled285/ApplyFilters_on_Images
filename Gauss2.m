function [M] = Gauss2(Sig)

N=round((3.7*Sig)-0.5);

Size=2*N+1;
M=Gauss1(Size,Sig);

end












%{
ind = -floor(Size/2) : floor(Size/2);

[X Y] = meshgrid(ind, ind);

 rm=double(2*pi*((Sig)^2));
 div=double(1/rm);
h = double(div*exp(-1*double(X^2 + Y^2)/ double(2*(Sig^2))));
h = h / sum(h(:));


h = h(:);
M=h
%}






%{

N=5;
ind = -floor(N/2) : floor(N/2);
[X Y] = meshgrid(ind, ind);
h = exp(-(X.^2 + Y.^2) / (2*sigma*sigma));
h = h / sum(h(:));

h = h(:);
M=h;

%}






