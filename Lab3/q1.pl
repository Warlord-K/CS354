animal(vishnu).
animal(abhinav).

wild(vishnu).

likes(girls, X):- wild(X),!,fail.
likes(girls, X):- animal(X).