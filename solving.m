%solving for x using Gauss elimination
function x=solving(A,b)
m=length(A);
x=zeros(m,1);
%----------------- ELIMINATION----------------------------
for i=1:m-1
    for j=i+1:m
        coeff=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-coeff*A(i,:);
        %disp(coeff)
        b(j)=b(j)-coeff*b(i);
    end
end
%------------------- BACK SUBSTITUTION----------------------------
for i=m:-1:1
    if i==m
        x(i)=b(i)/A(i,i);
    end
    if i~=m
            temp=b(i)-A(i,i+1:end)*x(i+1:end);
            %disp(temp)
            x(i)=temp/A(i,i);
            %disp(x)
    end
end
disp("A=")
disp(A)
disp("b=")
disp(b)
disp("x=")
disp(x)
end