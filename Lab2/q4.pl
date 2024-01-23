pf(N,L) :- N > 0,  pf(N,L,2).

pf(1,[],_) :- !.
pf(N,[F|L],F) :-
   R is N // F, N =:= R * F, !, pf(R,L,F).
pf(N,L,F) :- 
   next_factor(N,F,NF), pf(N,L,NF).

next_factor(_,2,3) :- !.
next_factor(N,F,NF) :- F * F < N, !, NF is F + 2.
next_factor(N,_,N).

pf_mult(N,L) :- N > 0, pf_mult(N,L,2).

pf_mult(1,[],_) :- !.
pf_mult(N,[[F,M]|L],F) :- divide(N,F,M,R), !, 
   next_factor(R,F,NF), pf_mult(R,L,NF).
pf_mult(N,L,F) :- !,                          
   next_factor(N,F,NF), pf_mult(N,L,NF).

divide(N,F,M,R) :- divi(N,F,M,R,0), M > 0.

divi(N,F,M,R,K) :- S is N // F, N =:= S * F, !,   
   K1 is K + 1, divi(S,F,M,R,K1).
divi(N,_,M,N,M).