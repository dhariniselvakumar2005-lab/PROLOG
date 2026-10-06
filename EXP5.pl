% Breadth First Search (BFS)

% Facts

connected(p, q, 2).
connected(p, r, 4).
connected(q, s, 3).
connected(q, t, 1).
connected(r, u, 2).
connected(r, v, 5).
connected(s, w, 2).
connected(t, w, 4).
connected(u, x, 3).
connected(v, x, 1).
connected(w, z, 2).
connected(x, z, 4).


% BFS

bfs(Start, Goal, Path) :-
    search([[Start]], Goal, RevPath),
    reverse(RevPath, Path).


% Goal found

search([[Goal|Path]|_], Goal, [Goal|Path]).


% Continue searching

search([Path|Paths], Goal, Solution) :-
    extend(Path, NewPaths),
    append(Paths, NewPaths, Paths1),
    search(Paths1, Goal, Solution).


% Generate all possible next paths

extend([Node|Path], NewPaths) :-
    findall(
        [NewNode, Node|Path],
        (
            connected(Node, NewNode, _),
            \+ member(NewNode, [Node|Path])
        ),
        NewPaths
    ).