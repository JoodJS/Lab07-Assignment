
% Lab 7 - Part 1: Shopping Program


start :-
    shopping_menu([coffee, milk, chocolate, apple, juice]).

shopping_menu(Basket) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    handle_choice(Choice, Basket).

handle_choice(d, Basket) :-
    display_items(Basket),
    shopping_menu(Basket).
handle_choice(a, Basket) :-
    write('enter the item you want to add: '),
    read(Item),
    append(Basket, [Item], NewBasket),
    writeln('The item has been added.'),
    shopping_menu(NewBasket).
handle_choice(e, _) :-
    writeln('Goodbye!').
handle_choice(Choice, Basket) :-
    \+ member(Choice, [d, a, e]),
    writeln('Invalid choice. Please try again.'),
    shopping_menu(Basket).

% Recursively print one item at a time; stop at the empty list.
display_items([]).
display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).
