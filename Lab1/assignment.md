# CS354 Assignment 1
## By: Yatharth Gupta 210001083

### q1:

#### Knowledge Base:

```
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
```
#### Query:

```
    drinks(X, orangejuice), owns(X, zebra).
```

### q2:

```
    happy(X) :- parent(X, _).
    hastwochildren(X) :- parent(X, Y), sister(_, Y).
    grandchild(X, Y) :- parent(Y, Z), parent(Z, X).
    aunt(X, Y) :- sister(X, Z), parent(Z, Y).
```
### q3:

```
    female(mary).
    female(sandra). 
    female(juliet). 
    female(lisa). 
    male(peter). 
    male(paul).
    male(john). 
    male(bob). 
    male(harry). 
    parent(bob, lisa). 
    parent(bob, paul). 
    parent(bob,mary). 
    parent(juliet, lisa). 
    parent(juliet, paul). 
    parent(juliet, mary). 
    parent(peter, harry).
    parent(lisa, harry). 
    parent(mary, john). 
    parent(mary, sandra).
    father(X,Y):- parent(X,Y), male(X). 
    sister(X,Y):- parent(Z, X),
    parent(Z, Y),
    female(X), X \= Y.
    grandmother(X, Y):- female(X), parent(X, Z), parent(Z,Y).
    cousin(X,Y):- grandparent(Z,X),grandparent(Z,Y).
    grandparent(X, Y):- parent(X, Z), parent(Z, Y).
```
### q4:

```
    soldier(aardvark, _), soldier(flume, _).
```

### q5:

```
    parent(chester,irvin). 
    parent(chester,clarence). 
    parent(chester,mildred). 
    parent(irvin,ron).
    parent(irvin,ken). 
    parent(clarence,shirley). 
    parent(clarence,sharon).
    parent(clarence,charlie). 
    parent(mildred,mary).
    ancestor(X, Y):- parent(X, Y).
    ancestor(X, Y):- parent(X, Z), ancestor(Z, Y).
```