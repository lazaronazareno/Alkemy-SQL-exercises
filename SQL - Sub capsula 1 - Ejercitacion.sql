--- 07-09-2021 13:40:29
--- SQLite
Create TABLE CURSO (codigo INTEGER PRIMARY KEY, Nombre VARCHAR NOT NULL, Descripcion VARCHAR, Turno Varchar NOT NULL);


--- 07-09-2021 13:47:29
--- SQLite
ALTER TABLE CURSO ADD COLUMN cupo INTEGER;


--- 07-09-2021 13:52:20
--- SQLite
iNSERT into CURSO (codigo, nombre, descripcion, turno, cupo) Values (101, "Algoritmos", "Algoritmos y Estructuras de Datos", "Mañana", 35);


--- 07-09-2021 13:53:02
--- SQLite
iNSERT into CURSO (codigo, nombre, descripcion, turno, cupo) Values (102, "Matematica Discreta", "", "Tarde", 30);


--- 07-09-2021 13:54:04
--- SQLite
iNSERT into CURSO (codigo, nombre, descripcion, turno, cupo) Values (103, "", "prueba null", "", 30);


--- 07-09-2021 13:54:11
--- SQLite
SELECT * FROM CURSO;


--- 07-09-2021 14:03:59
--- SQLite
UPDATE CURSO SET cupo = 25;


--- 07-09-2021 14:04:05
--- SQLite
SELECT * FROM CURSO;


--- 07-09-2021 14:04:32
--- SQLite
DELETE FROM CURSO WHERE Codigo=103; SELECT * FROM CURSO;


--- 07-09-2021 14:04:52
--- SQLite
DELETE FROM CURSO WHERE Codigo=101; SELECT * FROM CURSO;


