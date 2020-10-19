pertenece(X,[X|_T]).
pertenece(X,[_H|T]):-pertenece(X,T).

concat([],L,L).
concat([H1|T1],L2,[H1|T3]):-concat(T1,L2,T3).

ultimo([X|[]],X).
ultimo([_H|T],X):-ultimo(T,X).

agregar_al_inicio(X,L,[X|L]).
borrar_al_inicio([_H|T],T).


agregar_al_final(X,[H|T1],[H|T2]):-agregar_al_final(X,T1,T2).
agregar_al_final(X,[],[X|[]]).

borrar_al_final([H1|T1],[H1|T2]):-borrar_al_final(T1,T2).
borrar_al_final([_X|[]],[]).