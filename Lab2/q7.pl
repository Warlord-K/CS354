compress([],[]).
compress([X],[X]).
compress([X,X|Xs],Zs) :- compress([X|Xs],Zs).
compress([X|Xs],Zs) :- compress(Xs,Zs).