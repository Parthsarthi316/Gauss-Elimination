%back substitution
function x=backsubstitution(A,b)
m=length(b);
x=zeros(m,1);
for i=m:-1:1
    if i==m
        x(i)=b(i)/A(i,i);
    end
    if i~=m
            temp=b(i)-A(i,i+1:end)*x(i+1:end);
            x(i)=temp/A(i,i);
    end
end
