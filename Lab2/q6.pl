my_flatten([], []).
my_flatten([H,T], X):- \+ is_list(H), my_flatten(T, [X|H]).
my_flatten([H,T], X):- is_list(H), my_flatten(H, HF), my_flatten(T, [X|HF]).