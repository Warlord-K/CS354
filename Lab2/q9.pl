lsort(InList,OutList) :-
	add_key(InList,KList),
	keysort(KList,SKList),
	rem_key(SKList,OutList).

add_key([],[]).
add_key([X|Xs],[L-p(X)|Ys]) :-!, 
	length(X,L), add_key(Xs,Ys).

rem_key([],[]).
rem_key([_-p(X)|Xs],[X|Ys]) :- rem_key(Xs,Ys).