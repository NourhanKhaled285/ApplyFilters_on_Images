function [M]= MeanMask(Rows,Column)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

size=(Rows*Column);
div=1/size;
M=ones(Rows,Column)*div;

end