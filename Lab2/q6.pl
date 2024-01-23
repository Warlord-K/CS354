my_flatten([X],X):- \+ is_list(X).
my_flatten([], []).
my_flatten([H,T],X):- \+ is_list(H), my_flatten(T,[X|H]).
my_flatten([H,T], X):- is_list(H), my_flatten(H, HF), my_flatten(T, [X|HF]).


%my_flatten(X,[X]) :- \+ is_list(X).
%my_flatten([],[]).
%my_flatten([X|Xs],Zs) :- my_flatten(X,Y), my_flatten(Xs,Ys), append(Y,Ys,Zs).
