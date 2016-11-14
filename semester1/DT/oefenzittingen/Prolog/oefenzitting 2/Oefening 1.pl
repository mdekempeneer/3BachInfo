listlength2(A,B) :- 
    listlength2(A,B,0).
listlength2([],Acc,Acc).
listlength2([_|Rest],Length,Acc):-
    Acc2 is Acc +1,
    listlength2(Rest,Length,Acc2).
last([X],X).
last([_|Rest],X) :-
	last(Rest,X).

next_to([X,Y|_], X, Y).
next_to([_|Rest],X, Y) :-
	next_to(Rest,X, Y).

vector_sum([],[], []).
vector_sum([E1|Rest1], [E2|Rest2], Result) :-
    vector_sum(Rest1, Rest2, RR),
    V is E1 + E2,
    Result = [(V)| RR].

look_up([pair(Name,Grade)|_],Name,Grade).
look_up([_|Rest],Name,Grade):-
    look_up(Rest, Name, Grade).
    

