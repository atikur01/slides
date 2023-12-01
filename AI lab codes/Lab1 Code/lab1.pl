boy(john).
boy(jack).
boy(james).
girl(may).
girl(cris).
father(sam,john).
father(jack,sam).

grandfather(X,Z):- father(X,Y),father(Y,Z).


