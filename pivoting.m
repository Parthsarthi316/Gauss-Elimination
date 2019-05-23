%pivoting
function [A,b]=pivoting(A,b,i)
max=A(i,i);
maxi=i;
for j=i+1:length(b)
    if(A(j,i)>max)
        maxi=j;
    end
end
if(maxi~=i)
    temp=A(i,:);
    A(i,:)=A(maxi,:);
    A(maxi,:)=temp;
    temp=b(i);
    b(i)=b(j);
    b(j)=temp;
end

     