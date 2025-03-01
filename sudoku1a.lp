% Sudoku Solver
% Samantha Stuart
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
#const n = 4.

row(1..n).
col(1..n).
n(1..n).


{sudoku(X,Y,N): n(N)}=1:-col(Y),row(X).
:-sudoku(X,Y,N),sudoku(X',Y,N),X!=X'.
:-sudoku(X,Y,N),sudoku(X,Y',N),Y!=Y'.

%this line is for readability still produces 576 answers
%displays answers in fashion they are displayed in answer file
% so (1,1,x) (1,2,x), ... etc
:-sudoku(X,Y,N),sudoku(X,Y,N'),N!=N'.


#show sudoku/3.
