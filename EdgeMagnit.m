function [G] = EdgeMagnit(I)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
filter=Sobel('H');
x=LinearFilter(I,filter,'absolute');
filter=Sobel('V');
y=LinearFilter(I,filter,'absolute');

G=x+y;
[h,w]=size(G);

for i=1:h
    for j=1:w
        if G(i,j)>255
        G(i,j)=255; 
        end
    end
end


end       %cutt off?????????
