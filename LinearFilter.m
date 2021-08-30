function [Out] =LinearFilter(I,Filter, Postproc)

%I=[1,2,3,4,5;6,7,8,9,10;11,12,13,14,15;16,17,18,19,20;21,22,23,24,25];


%Igray= rgb2gray(ar);

[hc,wc,sc]=size(I);
if sc==3
    Igray=rgb2gray(I);
    Igray=im2double(Igray);
else
 Igray=I; 
   Igray=im2double(Igray);
end



[h_ol,w_ol,siz]=size(Igray);


[hf,wf,s1]=size(Filter);
hnew=h_ol+(hf-1);
wnew=w_ol+(wf-1);
x=zeros(hnew,wnew);


maxr=hnew;
maxc=wnew;

minr=1;
minc=1;
counter=floor(hf/2);


counter2=floor(wf/2);
rw=1;
col=1;

for i=counter+1:h_ol+counter
    col=1;
    for j=counter2+1:w_ol+counter2
        
        x(i,j)=Igray(rw,col);
       col=col+1;
        
    end
       rw=rw+1;
    
end



Out=Igray;

sum=0;
varif=1;
varjf=1;
for i=1:h_ol
     
    
   for j=1:w_ol
    varif=1;
     varjf=1;
     
        for z=i:(hf+i-1)
            for w=j:(wf+j-1)
                 g=x(z,w)*Filter(varif,varjf);

                sum=sum+g;
               varjf=varjf+1;
                
            end
               varjf=1;
               varif=varif+1;
        end
        Out(i,j)=sum;
        sum=0;
    end
   
end
 

 
if strcmp(Postproc,'cutoff')
     
     for ii=1:h_ol
         for jj=1:w_ol
             if Out(ii,jj)<0
                Out(ii,jj)=0; 
             elseif Out(ii,jj)>255
                Out(ii,jj)=255; 
             end
         end
     end
      
      
  
  elseif strcmp(Postproc,'absolute')
     % Out=(abs(Out))./max(max(Out));
    
      for iii=1:h_ol
       for jjj=1:w_ol
         if Out(iii,jjj)<0
               %Out(iii,jjj)=(abs( Out(iii,jjj))./max(max(Out)));
               Out(iii,jjj)=(abs( Out(iii,jjj)));
      
               
         end
       end
    end
      
    
    
  elseif  strcmp(Postproc,'none')
     
      Out=Out;
      
  end

end
 



%{    

%doubl col and rows val

doublicate_num_row=counter;


doublicate_num_col=counter2;


doublicate_col1=0;
doublicate_col2=counter2+w_ol;


doublicate_row1=0;
doublicate_row2=counter+h_ol;


while doublicate_num_col>0
    minr=1;
    minc=1;
    
    
   doublicate_col1=doublicate_col1+1;
   doublicate_col2=doublicate_col2+1;
for i=counter+1:h_ol+counter
   
  
        x(i,doublicate_col1)=Igray(minr,1);
      
        minr=minr+1;
end

minr=1;

for i=counter+1:h_ol+counter
  

        x(i,doublicate_col2)=Igray(minr,w_ol);
      
        minr=minr+1;
end


doublicate_num_col=doublicate_num_col-1;


end










while doublicate_num_row>0
    minr=1;
    minc=1;
    doublicate_row1=doublicate_row1+1;
    doublicate_row2=doublicate_row2+1;
    

minr=1;



for j=counter2+1:w_ol+counter2
  

        x(doublicate_row1,j)=Igray(1,minc);
      
        minc=minc+1;
end

minc=1;
for j=counter2+1:w_ol+counter2
  

        x(doublicate_row2,j)=Igray(h_ol,minc);
      
        minc=minc+1;
end




doublicate_num_row=doublicate_num_row-1;


end


%}



  
      
