% Facts
parent(tom, pam).
parent(liz, bob).
parent(liz, ann).
parent(pat, jim).

% Ruless
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
