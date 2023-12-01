pow(0,N,0):- N > 0.
pow(M,0,1):- M > 0.

pow(X,N,V):-
    X > 0,
    N > 0,
    N1 is N-1,
    pow(X,N1,V1),
    V is V1*X.
