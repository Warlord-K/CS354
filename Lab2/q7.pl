compress([],[]):- !.
compress([A],[A]):- !.
compress([A,A|A1],B1) :- compress([A|A1],B1).
compress([A,C|C1],[A,B1]) :- A \= C, compress([C|C1],B1).
