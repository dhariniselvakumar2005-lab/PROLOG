% Family Tree - Prolog

% Facts

male(tom).
male(bob).
male(paul).

female(pam).
female(ann).
female(liz).

parent(pam, bob).
parent(tom, bob).

parent(tom, liz).
parent(ann, liz).

parent(bob, jim).
parent(bob, pat).


% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).