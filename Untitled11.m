
%I=imread('Moon.bmp');  %lap
I=imread('I.bmp');
figure,imshow(I),title('figuer1');
%{

figure,imshow(I),title('figer1');
%}
%{
 I1=imread('EdgeMagnit(I).png');
 figure,imshow(I1),title('figer4'); 

%}
%{
 m=Sobel('V');
  out=LinearFilter(I,m,'absolute');
 figure,imshow(out,[]),title('figer3');

 
 
 m=Sobel('H');
  out=LinearFilter(I,m,'absolute');
 figure,imshow(out,[]),title('figer3');
 %}
 
   
   




                                     % **************mean
%I=imread('LinearFilter(I,MeanMask(3,11)).bmp');
%figure,imshow(I),title('figer1');


m=MeanMask(25,25);
out=LinearFilter(I,m,'none');
figure,imshow(out),title('figer3');

%{
    
                                        %******** laplacian
  m=LaplacianSharp();
  out1=LinearFilter(out,m,'cutoff');
figure,imshow(out1),title('la');
%}

%{
m=MeanMask(13,5);
out=LinearFilter(I,m,'none');
figure,imshow(out),title('figer4');
%}

%{                 
                                   %*****************Gauss-1

 m=Gauss1(5,4);

out=LinearFilter(I,m,'none');

%figure,imshow(out,[]),title('figer3');

%}


               
                                   %*****************Gauss-2
%i=imread('LinearFilter(I,Gauss2(4)).bmp');
%figure,imshow(i),title('figer2');
  
%{
m=Gauss2(4);

out=LinearFilter(I,m,'none');
figure,imshow(out),title('figer3');
%}




  
  
      %{                            
    %   ************EdgeMagnit
I1=imread('LinearFilter(I,Sobel(_V_),_Absolute_).png');
  figure,imshow(I1),title('figer2');
  
  I1=imread('EdgeMagnit(I).png');
  figure,imshow(I1),title('figer4'); 
 
out=EdgeMagnit(I);
figure,imshow(out),title('figer5');
%}

