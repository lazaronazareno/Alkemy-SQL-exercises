--- 14-09-2021 06:46:59
--- SQLite
SELECT e.legajo, COUNT(*)
FROM ESTUDIANTE e INNER JOIN INSCRIPCION i on e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo;

--- 14-09-2021 06:47:09
--- SQLite
SELECT e.legajo, COUNT(*)
FROM ESTUDIANTE e INNER JOIN INSCRIPCION i on e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
HAVING COUNT(*) > 1;

--- 14-09-2021 06:47:18
--- SQLite
SELECT *, COUNT(*)
FROM ESTUDIANTE e INNER JOIN INSCRIPCION i on e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
HAVING COUNT(*) < 1;

--- RTA PUNTO 4 : 
--- TIPO DE INDICES: 
--- PROFESOR : ID = PRIMARY KEY INDICE CLOUSTERIZADO

--- CURSO: CODIGO = PRIMARY KEY INDICE CLOUSTERIZADO
---        PROFESOR_ID = FOREIGN KEY INDICE NO CLOUSTERIZADO

--- INSCRIPCION : NUMERO PRIMARY KEY INDICE CLOUSTERIZADO
---               CURSO_codigo = FOREIGN KEY INDICE NO CLOUSTERIZADO
---               ESTUDIANTE_legajo = FOREIGN KEY INDICE NO CLOUSTERIZADO

--- ESTUDIANTE : LEGAJO = PRIMARY KEY INDICE CLOUSTERIZADO

--- 14-09-2021 06:47:28
--- SQLite
SELECT * 
FROM ESTUDIANTE e
WHERE e.legajo 
IN (SELECT i.ESTUDIANTE_legajo
FROM inscripcion i INNER JOIN CURSO c
ON i.CURSO_codigo = c.codigo
INNER JOIN PROFESOR p
ON p.id = c.PROFESOR_id
WHERE p.nombre = 'Juan' AND p.apellido= 'Perez');
