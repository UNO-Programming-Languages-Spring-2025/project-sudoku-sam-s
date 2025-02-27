% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
#const n = 4.

% x(1..n).
% y(1..n).
% n(1..n).

% {sudoku(X,Y,N): n(N)}=1 :- x(X) ,y(Y).

x(1..n).
y(1..n).
n(1..n).



cell(X,Y):- x(X),y(Y).
sudoku(X,Y,N):- cell(X,Y),n(N).







#show sudoku/3.

