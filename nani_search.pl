:- dynamic here/1.

room(office).
room(hall).
room(kitchen).
room(diningroom).
room(cellar).

location(desk, office).
location(computer, office).
location(apple, kitchen).
location(broccoli, kitchen).
location(crackers, kitchen).
location(flashlight, desk).
location(washingmachine, cellar).
location(nani, washingmachine).

door(office, hall).
door(office, kitchen).
door(hall, diningroom).
door(diningroom, kitchen).
door(kitchen, cellar).

edible(apple).
edible(crackers).
tastes_yucky(broccoli).

turned_off(flashlight).
here(kitchen).

where_food(X,Y):- location(X,Y), edible(X).

connect(X,Y):- door(X,Y).
connect(X,Y):- door(Y,X).

list_things(Place):- location(X,Place), tab(2), write(X), nl, fail.
list_things(_).
 
list_connections(Place):- connect(Place,X), tab(2), write(X), nl, fail.
list_connections(_).

look(Here):- write('You are in the '), write(Here), nl, write('You can see the following things:'), nl, list_things(Here), write('You can go to the following rooms:'), nl, list_connections(Here).
