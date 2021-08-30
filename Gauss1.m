function [M] = Gauss1(Size,Sig)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

ind = -floor(Size/2) : floor(Size/2);

[X Y] = meshgrid(ind, ind);

 rm=double(2*pi*((Sig).^2));
 div=double(1/rm);
M = double(div*exp(-1*double(X.^2 + Y.^2)/ double(2*(Sig.^2))));
M = M/ sum(M(:));

end





%{
val=-floor(Size/2):floor(Size/2);
x=meshgrid(val);


rm=double(1/sqrt(2*pi*(Sig)));
o=double(x.^2);

h=double(rm*exp(-o/(Sig.^2)));
h = h / sum(h);

M=h;
%}

%{


m=Gauss2(4);

out=LinearFilter(I,m,'none');
figure,imshow(out),title('figer3');

m=m.';

out=LinearFilter(out,m,'none');

figure,imshow(out),title('figer3');

%}
