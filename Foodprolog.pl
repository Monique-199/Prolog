% Facts
food(pilau).
food(matumbo).
food(pancakes).
food(pizza).
food(rice).
food(chips).
food(chafua).
food(mukimo).
food(githeri).
food(veg_stew).
%rules
tasty(X) :- food(X).
bomas(X) :- food(X), X = matumbo.
healthy(X) :- food(X),not(unhealthy(X)).
energygiving(X):-food(X),(X=rice;X=githeri).
unhealthy(X) :- food(X), (X = pizza ; X = chips).
african(X) :- food(X), (X = pilau ; X = chafua ; X = mukimo ; X = githeri ; X = veg_stew).
carbs(X) :- food(X), (X = rice ; X = chips ; X = mukimo).
%QUERIESs
%carbs(X).
%african(X).
%tasty(pancakes).
%energygiving(githeri)
%bomas(chafua).
%unhealthy(X),bomas(X).s
%food(X), \+tasty(X).
%healthy(X), energygiving(X).
%healthy(pancakes).
%carbs(X),bomas(X).
