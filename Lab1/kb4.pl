likes(mary, chocolates).
likes(mary, pizza).
likes(mary, burger).
likes(robert, mary).
likes(jim, Y):- likes(Y, pizza).
# likes(robert, Y):- likes(robert, X), likes(X, Y).