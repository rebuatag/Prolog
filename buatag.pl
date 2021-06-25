brother(X,Y) :- father(Z,X), father(Z,Y), not(X=Y). 
cousin(X,Y) :- father(Z,X), father(W,Y), brother(Z,W).
grandson(X,Y) :- father(Z,X), father(Y,Z).
descendant(X,Y) :- father(Y,X).
descendant(X,Y) :- father(Z,X), descendant(Z,Y).

father(a,b).
father(a,c).
father(b,d).
father(b,e).
father(c,f).