%main for Gauss-Elimination with pivoting
[A,b]=inputAb;
[A,b]=elimination(A,b);
x=backsubstitution(A,b);
disp("x=")
disp(x)