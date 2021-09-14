--- 13-09-2021 21:14:35
--- SQLite
SELECT COUNT(*)
FROM ESTUDIANTES
WHERE nombre = 'Mecanica';

--- 13-09-2021 21:14:46
--- SQLite
SELECT MIN(salario)
FROM PROFESOR
WHERE fecha_nacimiento >= '1980-00-00' 
AND fecha_nacimiento < '1990-00-00';

--- 13-09-2021 21:14:56
--- SQLite
SELECT nombre, COUNT(nombre) as pasajeros
FROM PAIS, PASAJEROS
WHERE PAIS.idpais = PASAJEROS.idpais
GROUP By nombre;

--- 13-09-2021 21:15:03
--- SQLite
SELECT SUM(monto)
FROM PAGO;

--- 13-09-2021 21:15:12
--- SQLite
Select nombre, ROUND(SUM(PAGO.monto + PAGO.impuesto),2) as total
FROM PAGO INNER JOIN PASAJERO
ON PAGO.idpasajero = PASAJERO.idpasajero
GROUP By nombre;

--- 13-09-2021 21:15:21
--- SQLite
Select nombre, AVG(PAGO.monto + PAGO.impuesto) as total
FROM PAGO INNER JOIN PASAJERO
ON PAGO.idpasajero = PASAJERO.idpasajero
GROUP By nombre;
