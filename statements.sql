-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- Tu respuesta aquí: 
    SELECT nombre, lenguaje FROM usuarios_lenguajes

-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- Tu respuesta aquí
    SELECT COUNT(*) FROM usuarios_lenguajes

-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- Tu respuesta aquí
    SELECT nombre, edad FROM usuarios_lenguajes WHERE edad > 30

-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- Tu respuesta aquí
    SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'Javascript'

-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- Tu respuesta aquí
    SELECT nombre, edad FROM usuarios_lenguajes WHERE edad = 30

-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- Tu respuesta aquí
    SELECT nombre, email FROM usuarios_lenguajes WHERE email = 'juan.gomez@example.com';

-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- Tu respuesta aquí
    SELECT nombre, lenguaje, edad FROM usuarios_lenguajes WHERE lenguaje = 'java' AND edad < 25

-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
-- Tu respuesta aquí
    SELECT DISTINCT COUNT(edad) FROM usuarios_lenguajes WHERE lenguaje = 'Java';

-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- Tu respuesta aquí
    SELECT nombre FROM usuarios_lenguajes WHERE lenguaje = ''

-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- Tu respuesta aquí
    SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad ASC LIMIT 1;

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- Tu respuesta aquí
    SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad DESC

-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- Tu respuesta aquí
    SELECT COUNT(id_usuario) FROM usuarios_lenguajes WHERE edad > 28

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- Tu respuesta aquí
    SELECT nombre, apellido FROM usuarios_lenguajes WHERE apellido LIKE '%a%'

-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- Tu respuesta aquí
    SELECT COUNT(lenguaje), lenguaje FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY COUNT(lenguaje) DESC LIMIT 1 

-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- Tu respuesta aquí
    SELECT nombre, lenguaje FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript';

-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- Tu respuesta aquí
    SELECT COUNT(lenguaje), lenguaje FROM usuarios_lenguajes WHERE lenguaje = 'Python';

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- Tu respuesta aquí
    SELECT nombre, lenguaje FROM usuarios_lenguajes ORDER BY nombre ASC

-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- Tu respuesta aquí
    SELECT nombre, email FROM usuarios_lenguajes WHERE email LIKE '%example%'

-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- Tu respuesta aquí
    SELECT nombre, edad FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND edad > 25 AND edad < 35

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- Tu respuesta aquí
    SELECT COUNT(lenguaje), lenguaje FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;

-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- Tu respuesta aquí
    SELECT nombre, COUNT(lenguaje) AS lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL GROUP BY nombre

-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- Tu respuesta aquí
    SELECT lenguaje FROM usuarios_lenguajes ORDER BY LENGTH(lenguaje) DESC LIMIT 1

-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- Tu respuesta aquí
    SELECT CONCAT(nombre, apellido) FROM usuarios_lenguajes

-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- Tu respuesta aquí
    SELECT COUNT(DISTINCT(lenguaje)) AS lenguajes_distintos FROM usuarios_lenguajes WHERE edad > 25

-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- Tu respuesta aquí
    SELECT edad, COUNT(*) AS total FROM usuarios_lenguajes GROUP BY edad HAVING COUNT(*) > 1 


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- Tu respuesta aquí
    SELECT nombre, lenguaje FROM usuarios_lenguajes WHERE edad > 30 ORDER BY length(lenguaje) DESC LIMIT 1


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- Tu respuesta aquí
    SELECT nombre, email, lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL

-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- Tu respuesta aquí
    SELECT COUNT(apellido) FROM usuarios_lenguajes WHERE apellido LIKE 'g%'

-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- Tu respuesta aquí
    SELECT nombre, lenguaje FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' ORDER BY length(lenguaje) ASC LIMIT 1

-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- Tu respuesta aquí
    SELECT nombre, edad, lenguaje FROM usuarios_lenguajes WHERE edad > 30 ORDER BY length(lenguaje) ASC LIMIT 1

-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- Tu respuesta aquí
    SELECT nombre, lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY lenguaje ASC

-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- Tu respuesta aquí
    SELECT COUNT(id_usuario) AS usuarios FROM usuarios_lenguajes WHERE edad > 20 AND edad < 25 AND lenguaje IS NOT NULL

-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- Tu respuesta aquí
    SELECT nombre, lenguaje FROM usuarios_lenguajes WHERE lenguaje NOT LIKE 'SQL'

-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- Tu respuesta aquí
    SELECT nombre, lenguaje,edad FROM usuarios_lenguajes WHERE edad >= 30 ORDER BY length(lenguaje) DESC LIMIT 1

-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí
    SELECT nombre, edad, edad - (SELECT AVG(edad) FROM usuarios_lenguajes) AS dif_edad FROM usuarios_lenguajes

-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- Tu respuesta aquí
    SELECT COUNT(lenguaje) FROM usuarios_lenguajes WHERE lenguaje LIKE '%Script%'

-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- Tu respuesta aquí
    SELECT length(nombre) AS nombre, length(lenguaje) AS lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí
    SELECT lenguaje FROM usuarios_lenguajes ORDER BY id_usuario DESC LIMIT 1

-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí
    SELECT SUM(edad) FROM usuarios_lenguajes

-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí
    SELECT COUNT(lenguaje) FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%' AND edad < 28 