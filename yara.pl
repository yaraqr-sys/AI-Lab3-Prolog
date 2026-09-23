female(fatima).
female(yara).
female(deema).
female(leena).
male(ali).
male(saad).
male(faisal).

parent(ali, yara).
parent(fatima, yara).

parent(ali, deema).
parent(fatima, deema).

parent(ali, leena).
parent(fatima, leena).

parent(ali, saad).
parent(fatima, saad).

parent(ali, faisal).
parent(fatima, faisal).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
