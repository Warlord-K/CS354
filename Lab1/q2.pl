happy(X) :- parent(X, _)
hastwochildren(X) :- parent(X, Y), sister(_, X).
grandchild(X, Y) :- parent(X, Z), parent(Z, Y).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).