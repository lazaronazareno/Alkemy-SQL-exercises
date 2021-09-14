--- 14-09-2021 02:47:53
--- MariaDB
CREATE TABLE PERSONA(id INT, nombre CHAR);


--- 14-09-2021 02:51:30
--- MariaDB
INSERT INTO PERSONA (id, nombre) VALUES (5, 'F');

--- 14-09-2021 02:51:55
--- MariaDB
INSERT INTO PERSONA (id, nombre) VALUES (3, 'E');

--- 14-09-2021 02:52:11
--- MariaDB
INSERT INTO PERSONA (id, nombre) VALUES (1, 'D');

--- 14-09-2021 02:52:26
--- MariaDB
INSERT INTO PERSONA (id, nombre) VALUES (6, 'C');

--- 14-09-2021 02:52:34
--- MariaDB
INSERT INTO PERSONA (id, nombre) VALUES (4, 'B');

--- 14-09-2021 02:52:37
--- MariaDB
INSERT INTO PERSONA (id, nombre) VALUES (2, 'A');

--- 14-09-2021 02:52:48
--- MariaDB
SELECT * FROM PERSONA;

--- 14-09-2021 02:53:56
--- MariaDB
alter table PERSONA add constraint pkid primary key(id);

--- 14-09-2021 02:54:05
--- MariaDB
SELECT * FROM PERSONA;

--- RTA PUNTO 6: Cambio el orden al consultar los datos por que el primary key define el orden
--- en el que los datos son almacenados, al no ordenarlos de ninguna manera se muestran por el index

