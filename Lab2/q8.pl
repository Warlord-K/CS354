combination(0,_,[]).
combination(K,L,[X|Xs]) :- el(X,L,R),K1 is K-1, combination(K1,R,Xs).

el(X,[X|L],L).
el(X,[_|L],R) :- el(X,L,R).