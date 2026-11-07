% Lab 7 - Part 2: List Tasks

% Task 1
deleteElement(_, [], []).
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).
deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).

% Task 2
add_at_the_end(X, [], [X]).
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).

% Test queries (run in SWI-Prolog console):
% ?- deleteElement(1, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
% ?- deleteElement(3, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
% ?- add_at_the_end(5, [1,2,3,4], List).
% ?- add_at_the_end(d, [a,b,c], List).
