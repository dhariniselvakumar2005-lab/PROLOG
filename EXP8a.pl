% Flatten a List

% Empty list
flatten_list([], []).

% First element is a list
flatten_list([H|T], FlatList) :-
    is_list(H),
    flatten_list(H, NewH),
    flatten_list(T, NewT),
    append(NewH, NewT, FlatList).

% First element is a normal element
flatten_list([H|T], [H|FlatList]) :-
    \+ is_list(H),
    flatten_list(T, FlatList).