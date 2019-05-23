%Inputting A and b
function [A,b]=inputAb
m=input('Rows of A:');
n=input('Columns of A: ');
for i=1:m
    for j=1:n
        A(i,j)=input('Enter elements:');
    end
end
l=input('Enter length of b:');
for i=1:l
    b(i)=input('Enter elements:');
end
disp("A=")
disp(A)
b=b';
disp("b=")
disp(b)