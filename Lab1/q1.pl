lives(british, red).
lives(diplomat, yellow).
lives(doctor, X):- near(X, Y), lives(Z, Y), owns(Z, fox). 
lives(norwegian, X):- near(X, blue). 
owns(spanish, dog).
owns(sculptor, snails).
owns(violinist, zebra).
drinks(X, coffee):- lives(X, green).
drinks(ukranian, tea).
drinks(X, milk):- owns(X, Y), middle(Y).
drinks(violinist, orangejuice).
right(green, white).
order(X, 1):- lives(norwegian, X).
same(japanese, archer).
near(X,Y):- near(Y,X).