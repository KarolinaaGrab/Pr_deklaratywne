%na(X,Y)
% opis: spełniony, gdy klocek X leży na klocku Y

na(c,a).
na(c,b).
na(d,c).


pod(X,Y):-na(Y,X).

miedzy(X,Y,Z):-na(X,Y),pod(X,Z).
miedzy(X,Y,Z):-na(X,Z),pod(X,Y).

czyta(ola).
czyta(iza).
czyta(piotr).

niepali(ola).
niepali(ewa).
niepali(jan).

sport(ola).
sport(piotr).
sport(jan).
sport(pawel).

jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).

lubi(ola,Y):-jarosz(Y),sport(Y).
lubi(ewa,Y):-jarosz(Y),niepali(Y).
lubi(pawel,Y):-jarosz(Y),sport(Y),czyta(Y).
lubi(iza,Y):-czyta(Y).
lubi(iza,Y):-sport(Y),niepali(Y).
lubi(jan,Y):-sport(Y).
lubi(piotr,Y):-sport(Y),jarosz(Y).
lubi(piotr,Y):-czyta(Y).