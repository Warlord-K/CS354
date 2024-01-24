lsort(InList,OutList) :-
	add_key(InList,KList),
	keysort(KList,SKList),
	rem_key(SKList,OutList).

add_key([],[]).
add_key([X|Xs],[L-p(X)|Ys]) :-!, 
	length(X,L), add_key(Xs,Ys).

rem_key([],[]).
rem_key([_-p(X)|Xs],[X|Ys]) :- rem_key(Xs,Ys).

lfsort(InList,OutList) :-
	add_key(InList,KList),
	keysort(KList,SKList),
	pack(SKList,PKList),
	lsort(PKList,SPKList),
	flatten(SPKList,FKList),
	rem_key(FKList,OutList).

pack([],[]).
pack([L-X|Xs],[[L-X|Z]|Zs]) :- transf(L-X,Xs,Ys,Z), pack(Ys,Zs).

transf(_,[],[],[]).
transf(L-_,[K-Y|Ys],[K-Y|Ys],[]) :- L \= K.
transf(L-_,[L-X|Xs],Ys,[L-X|Zs]) :- transf(L-X,Xs,Ys,Zs).