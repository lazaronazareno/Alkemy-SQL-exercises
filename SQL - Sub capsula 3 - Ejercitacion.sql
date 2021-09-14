--- 07-09-2021 15:11:38
--- SQLite
Create TABLE PROFESOR (id INTEGER PRIMARY KEY, nombre VARCHAR NOT NULL, apellido VARCHAR NOT NULL, fecha_nacimiento DATE, SALARIO INTEGER);

--- 07-09-2021 15:16:14
--- SQLite
INSERT INTO PROFESOR (nombre,apellido,fecha_nacimiento,SALARIO) VALUES (
  'Juan',
  'Perez',
  '1990-06-06',
  55000
); SELECT * FROM PROFESOR;

--- 07-09-2021 15:17:10
--- SQLite
INSERT INTO PROFESOR (nombre,apellido,fecha_nacimiento,SALARIO) VALUES (
  'María Emilia',
  'Paz',
  '1984-07-15',
  72000
); SELECT * FROM PROFESOR;

--- 07-09-2021 15:17:48
--- SQLite
INSERT INTO PROFESOR (nombre,apellido,fecha_nacimiento,SALARIO) VALUES (
  'Martín',
  'Correa',
  '1987-12-07',
  63000
); SELECT * FROM PROFESOR;

--- 07-09-2021 15:18:19
--- SQLite
INSERT INTO PROFESOR (nombre,apellido,fecha_nacimiento,SALARIO) VALUES (
  'Lucía',
  'Díaz',
  '1991-02-24',
  45000
); SELECT * FROM PROFESOR;

--- 07-09-2021 15:18:51
--- SQLite
INSERT INTO PROFESOR (nombre,apellido,fecha_nacimiento,SALARIO) VALUES (
  'Raúl',
  'Martínez',
  '1980-10-15',
  85000
); SELECT * FROM PROFESOR;

--- 07-09-2021 15:19:22
--- SQLite
INSERT INTO PROFESOR (nombre,apellido,fecha_nacimiento,SALARIO) VALUES (
  'Mabel',
  'Ríos',
  '1982-06-12',
  83000
); SELECT * FROM PROFESOR;

--- 07-09-2021 15:21:26
--- SQLite
SELECT nombre, apellido, fecha_nacimiento
FROm PROFESOR
ORDER BY fecha_nacimiento ASC;

--- 07-09-2021 15:22:30
--- SQLite
SELECT *
FROm PROFESOR
WHERE salario >= 65000;

--- 07-09-2021 15:24:49
--- SQLite
SELECT *
FROm PROFESOR
WHERE fecha_nacimiento >= 1980;

--- 07-09-2021 15:25:21
--- SQLite
SELECT *
FROm PROFESOR
WHERE fecha_nacimiento >= 1980 
AND fecha_nacimiento <= 1990;

--- 07-09-2021 15:25:46
--- SQLite
SELECT *
FROm PROFESOR
WHERE fecha_nacimiento >= 1980-0-0 
AND fecha_nacimiento <= 1990-0-0;

--- 07-09-2021 15:27:38
--- SQLite
SELECT *
FROm PROFESOR
WHERE fecha_nacimiento >= 1980-0-0 
AND fecha_nacimiento < 1990-0-0;

--- 07-09-2021 15:28:14
--- SQLite
SELECT *
FROm PROFESOR
WHERE fecha_nacimiento >= 1980-00-00 
AND fecha_nacimiento < 1990-00-00;

--- 07-09-2021 15:28:30
--- SQLite
SELECT *
FROm PROFESOR
WHERE fecha_nacimiento >= '1980-00-00' 
AND fecha_nacimiento < '1990-00-00';

--- 07-09-2021 15:35:14
--- SQLite
SELECT *
FROm PROFESOR
LIMIT 5;

--- 07-09-2021 15:36:07
--- SQLite
SELECT *
FROm PROFESOR
WHERE apellido LIKE 'P%';

--- 07-09-2021 15:36:44
--- SQLite
SELECT *
FROm PROFESOR
WHERE fecha_nacimiento >= '1980-00-00' 
AND fecha_nacimiento < '1990-00-00'
AND salario > 80000;

