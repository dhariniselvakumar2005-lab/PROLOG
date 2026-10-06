% N-Queens Problem

% Generate a list of numbers from 1 to N

numlist(N, N, [N]).

numlist(I, N, [I|Rest]) :-
    I < N,
    I1 is I + 1,
    numlist(I1, N, Rest).


% Solve the N-Queens problem

queens(N, Queens) :-
    numlist(1, N, Ns),
    permutation(Ns, Queens),
    safe(Queens).


% Check whether the queen arrangement is safe

safe([]).

safe([Q|Qs]) :-
    no_attack(Q, Qs, 1),
    safe(Qs).


% Check that a queen does not attack
% any queen in the remaining rows

no_attack(_, [], _).

no_attack(Q, [Q1|Qs], D) :-
    Q =\= Q1,
    abs(Q - Q1) =\= D,
    D1 is D + 1,
    no_attack(Q, Qs, D1).