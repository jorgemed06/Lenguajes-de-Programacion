%CLASSE 08-09-2026 -
%--- PERSONAJES (nombre, nivel, vida) ---
personaje('Elara', 5, 100).
personaje('Kael', 3, 80).
personaje('Rin', 7, 120).
personaje('Jorge', 9, 200).


%--- MISIONES (id, nombre, dificultad, XP) ---
mision(m1, 'Bosque de Sombras', 2, 50).
mision(m2, 'Cueva del Dragon', 5, 120).
mision(m3, 'Torre Arcana', 7, 200).

%--- INVENTARIOS (personaje, lista objetos) ---
inventario('Elara', [espada, escudo, pocion]).
inventario('Kael', [arco, flechas]).
inventario('Rin', [varita, grimorio, pocion, amuleto]).
inventario('Jorge', [arma('Hacha de veneno', 10, veneno), armadura, botas_de_velocidad]).


%--- OBJETOS REQUERIDOS POR MISION ---
requiere(m1, grimorio). requiere(m1, pocion).
requiere(m2, escudo). requiere(m2, pocion).
requiere(m3, grimorio). requiere(m3, pocion).

%--- EJERCICIO 1: ESCRIBE UN HECHO PERSONAJE/3 CON NOMBRE, NIVEL Y VIDA PARA UN PERSONAJE NUEVO ---
%--- EJERCICIO 2: ESCRIBE UN INVENTTARIO/2 CON AL MENOS DOS OBJETOS PARA ESTE PERSONAJE ---
%--- EJERCICIO 3: ESCRIBE UNA CONSULTA QUE PREGUNTE EL NIVEL DE TU PERSONAJE USANDO UNA VARIABLE ---
% --- EJERCICIO 4: ESCRIBE UNA CONSULTA QUE RPEGUNTE SU INVENTARIO, IGNORANDO EL NOMBRE CON 'N' ---



%--- DEFINE UNA ESTRUCTURA ARMA/3 CON NOMBRE, DANO Y ELEMENTO(EJ. HIELO, FUEGO, VENENO) ---
arma('Espada de Fuego', 20, fuego).
arma('Ballesta de Hielo', 15, hielo).
arma('Hacha de Veneno', 10, veneno).

%--- ESCRIBE UN HECHO TIENE /2 QUE ASOCIE ESA ARMA A UN PERSONAJE EXISTENTE ---
tiene('Elara', arma('Espada de Fuego', 20, fuego)).
tiene('Kael', arma('Ballesta de Hielo', 15, hielo)).
tiene('Jorge', arma('Hacha de Veneno', 10, veneno)).

%--- ESCRIBE UNA CONSULTA QUE OBTENGA EL DANO DE ESA ARMA USANDO UNA VARIABLE---
%--- AGREGA EL NOMBRE DEL ARMA A LA LSITA DE INVENTARIO/2 DE ESE PERSONAJE---





%- Clase 09-10-2026 -

xp_para_subir(NivelActual, XP) :-
    XP is NivelActual * 30.
vida_restante(VidaMax, Danio, Final) :-
    Final is VidaMax - Danio.


% RECURSION
factorial(0, 1).
factorial(N, R) :-
    N1 is N - 1,
    factorial(N1, R1),
    R is N * R1.

% Caso base: 0 misiones = 0 XP
xp_acumulada(0, 0).
% Caso recursivo: XP(N) = XP(N-1) + (N * 30)
xp_acumulada(N, Total) :-
    N > 0,
    N1 is N - 1,
    xp_acumulada(N1, Prev),
    Total is Prev + (N * 30). 

%Ejercicio 1: Define dano_acumulado(0,0). como caso base. Luego define el caso recursivo donde dano_acumulado(N, Total) siguiendo el patron de xp_acumulada. Escribe la consulta que calcule el dano acumulado tras 4 golpes. Verifica a mano cuando deberia dar dan0_acumulado(4,x).
dano_acumulado(0, 0).

dano_acumulado(N, Total) :-
    N > 0,
    N1 is N - 1,
    dano_acumulado(N1, Prev),
    Total is Prev + (N * 10). 

%Escribe un predicado mas_fuerte(P1, P2) que sea verdadero si el niel de P1 es mayor que el de P2(usa >). Escribe un predicado mismo_objeto(P1, P2, Obi) que sea verdadero si ambos personajes tienen exactamente el mismo objeto en su inventario. Prueba mismo_objeto con dos personajes que compratan vision.

mas_fuerte(P1, P2) :-
    personaje(P1, Nivel1, _),
    personaje(P2, Nivel2, _),
    Nivel1 > Nivel2.

mismo_objeto(P1, P2, Obj) :-
    inventario(P1, L1), inventario(P2, L2),
    member(Obj, L1), member(Obj, L2).
