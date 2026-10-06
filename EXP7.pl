% Monkey and Banana Problem

% Initial facts
in_room(monkey).
in_room(chair).
in_room(bananas).

% The monkey can move the chair
can_push(monkey, chair).

% The monkey can climb the chair
can_climb(monkey, chair).

% The monkey can grasp the bananas
can_grasp(monkey, bananas).

% The monkey can reach the bananas
can_reach(monkey, bananas) :-
    can_climb(monkey, chair),
    can_grasp(monkey, bananas).

% Solution
solve(monkey, chair, bananas) :-
    in_room(monkey),
    in_room(chair),
    in_room(bananas),
    can_push(monkey, chair),
    can_climb(monkey, chair),
    can_reach(monkey, bananas).