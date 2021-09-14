--- 14-09-2021 05:29:36
--- SQLite
SELECT COUNT(*)
FROM (SELECT p.nombre, COUNT(c.turno)
FROM PROFESOR p inner JOIN CURSO c on p.id = c.PROFESOR_id
WHERE turno = 'Noche'
GROUP BY p.nombre
HAVING COUNT(*) > 1);

--- 14-09-2021 05:29:45
--- SQLite
SELECT * 
FROM ESTUDIANTE e
WHERE e.legajo IN (SELECT i.ESTUDIANTE_legajo
                                    FROM INSCRIPCION i 
                                    WHERE i.CURSO_codigo != (105)
);
