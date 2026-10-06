% Depth First Search (DFS)

% Facts

connected(p, q).
connected(p, r).
connected(q, s).
connected(q, t).
connected(r, u).
connected(r, v).
connected(s, w).
connected(t, w).
connected(u, x).
connected(v, x).
connected(w, z).
connected(x, z).


% DFS

dfs(Start, Goal, Path) :-
    search(Start, Goal, [Start], RevPath),
    reverse(RevPath, Path).


% Goal reached

search(Goal, Goal, Path, Path).


% Continue searching

search(Node, Goal, Visited, Path) :-
    connected(Node, Next),
    \+ member(Next, Visited),
    search(Next, Goal, [Next|Visited], Path).