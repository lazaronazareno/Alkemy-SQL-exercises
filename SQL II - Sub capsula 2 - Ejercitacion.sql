--- 13-09-2021 22:37:21
--- SQLite
SELECT est.nombre, est.apellido, crs.nombre
FROM ESTUDIANTE est
INNER JOIN INSCRIPCION ins ON est.legajo = ins.ESTUDIANTE_legajo
INNER JOIN CURSO crs ON crs.codigo = ins.CURSO_codigo;


--- 13-09-2021 22:37:33
--- SQLite
SELECT est.nombre, est.apellido, crs.nombre
FROM ESTUDIANTE est
INNER JOIN INSCRIPCION ins ON est.legajo = ins.ESTUDIANTE_legajo
INNER JOIN CURSO crs ON crs.codigo = ins.CURSO_codigo
ORDER BY crs.nombre ASC;


--- 13-09-2021 22:37:44
--- SQLite
SELECT p.nombre, p.apellido, c.nombre
FROM PROFESOR p INNER JOIN CURSO c ON p.id = c.PROFESOR_id;


--- 13-09-2021 22:37:53
--- SQLite
SELECT p.nombre, p.apellido, c.nombre
FROM PROFESOR p INNER JOIN CURSO c ON p.id = c.PROFESOR_id
ORDER BY c.nombre ASC;


--- 13-09-2021 22:38:08
--- SQLite
SELECT crs.nombre, crs.cupo, COUNT(ins.CURSO_codigo) AS inscriptos, crs.cupo - inscriptos as disponible
FROM CURSO crs
INNER JOIN CURSO crs ON crs.codigo = ins.CURSO_codigo;


--- 13-09-2021 22:38:33
--- SQLite
SELECT crs.nombre, crs.cupo, COUNT(ins.CURSO_codigo) AS inscriptos, crs.cupo - inscriptos as disponible
FROM CURSO crs
INNER JOIN CURSO crs ON crs.codigo = ins.CURSO_codigo
WHERE disponible < 10;

