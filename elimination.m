%Elimination
function [A,b]=elimination(A,b)
m=length(b);
for i=1:m-1
    for j=i+1:m
        [A,b]=pivoting(A,b,i);%pivoting
         coeff=A(j,i)/A(i,i);
         A(j,:)=A(j,:)-coeff*A(i,:);
         b(j)=b(j)-coeff*b(i);
        
    end
end