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
inventario('Jorge', [hacha, armadura, botas_de_velocidad]).

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
tiene('Elara', 'Espada de Fuego').
tiene('Kael', 'Ballesta de Hielo').
tiene('Jorge', 'Hacha de Veneno').

%--- ESCRIBE UNA CONSULTA QUE OBTENGA EL DANO DE ESA ARMA USANDO UNA VARIABLE---
%--- AGREGA EL NOMBRE DEL ARMA A LA LSITA DE INVENTARIO/2 DE ESE PERSONAJE---
