
%I=imread('Moon.bmp');  %lap

%{
[h,w,s1]=size(I);
I=im2double(I);
h
w
I2=imread('sea.png');
[h1,w1,s]=size(I2);
I2=im2double(I2);
h1
w1
for i=1:h
    for j=1:w
        if I(i,j)==255
            I(i,j)=1;
        end
        
        if I2(i,j)==255
            I2(i,j)=1;
        end
    end
end


comp_img=zeros(h,w,s);
comp_img=I.*I2;  %dot product to matrices
%figure,imshow(I),title('figuer1');

%figure,imshow(I2),title('figuer2');


%figure,imshow(comp_img),title('figuer3');
%}
%{
I=imread('manwh.png');
[h,w,s1]=size(I);
I=im2double(I);

I2=imread('sea.png');
[h1,w1,s]=size(I2);
I2=im2double(I2);
ch=0;
cw=0;

if h1>h
    ch=h1;
else
    ch=h;
end

if w1>w
    cw=w1;
else
    cw=w;
end
comp=ones(ch,cw,s);

for i=1:h
    for j=1:w
        if I(i,j)==255
            I(i,j)=0;
        end
        
        
    end
end


for i=1:h1
    for j=1:w1
        if I2(i,j)==255
            I2(i,j)=0;
        end
       
    end
end



for i=1:h
    for j=1:w
         comp(i,j,:)=I(i,j,:);

    end
end

comp_img=zeros(h1,w1,s);
comp_img=comp.*I2;


figure,imshow(I),title('figuer1');

figure,imshow(I2),title('figuer2');


figure,imshow(comp_img),title('figuer3');
%}
%{
c=imread('jump.jpg');
c=im2double(c);
[a,b,v1]=size(c);
c2=imread('jump2.jpg');
c2=im2double(c2);
[a1,b1,v2]=size(c2);

figure,imshow(c),title('figuer1');
figure,imshow(c2),title('figuer2');
a
b
a1
b1

l=zeros(b1,b,v2);
c2=permute(c2,[b1 a1 v2]);

l=c2.*c;
figure,imshow(l),title('figuer2');
%}
%{

[h,w,z]=size(I);

newimg=(ones(h,w)*255);
i2=newimg.*I;
figure,imshow(i2),title('figuer2');
%}
%{

figure,imshow(I),title('figer1');
%}
%{
 I1=imread('EdgeMagnit(I).png');
 figure,imshow(I1),title('figer4'); 

%}


 
   
   


                                          % **************mean

  %{                                
I=imread('LinearFilter(I,MeanMask(3,11)).bmp');
figure,imshow(I),title('original image');


m=MeanMask(3,11);
out=LinearFilter(I,m,'none');
figure,imshow(out),title('blured img');
%}
                                          
                                          
%{
I=imread('LinearFilter(I,MeanMask(13,5)).bmp');
figure,imshow(I),title('original image');


m=MeanMask(13,5);
out=LinearFilter(I,m,'none');
figure,imshow(out),title('blured img');
%}




    
                                        %******** laplacian
 %{                                     
I=imread('LinearFilter(I,LaplacianSharp(),_Cutoff_).png');
figure,imshow(I),title('original img');

  m=LaplacianSharp();
  out1=LinearFilter(I,m,'cutoff');
figure,imshow(out1),title('sharper img');
%}



                
                                   %*****************Gauss-1

%{
I=imread('I.bmp');
figure,imshow(I),title('original img');
 m=Gauss1(10,16);

out=LinearFilter(I,m,'none');

figure,imshow(out,[]),title('blured img guass filter');
%}



               
                                      %*****************Gauss-2
%i=imread('LinearFilter(I,Gauss2(4)).bmp');
%figure,imshow(i),title('figer2');
  
%{
m=Gauss2(4);

out=LinearFilter(I,m,'none');
figure,imshow(out),title('figer3');
%}
  
                          
                                            %**************sobel v

  %{
  %'LinearFilter(I,Sobel(_V_),_Absolute_).png'
  I1=imread('I.bmp');
  figure,imshow(I1),title('original img');
  
  m=Sobel('V');
  out=LinearFilter(I1,m,'absolute');
 figure,imshow(out,[]),title('vertical edges detection');
%}
                                

                            % **************sobel H
 %{
  %'LinearFilter(I,Sobel(_H_),_Absolute_).png'
  I1=imread('I.bmp');
  figure,imshow(I1),title('original img');
  
   m=Sobel('H');
  out=LinearFilter(I,m,'absolute');
 figure,imshow(out,[]),title('horizontal edges detection');
 %}


                              %   ************EdgeMagnit

%{
  I1=imread('EdgeMagnit(I).png');
  figure,imshow(I1),title('original img'); 
 
out=EdgeMagnit(I);
figure,imshow(out),title('compination edges');
%}


%}