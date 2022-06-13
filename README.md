# Bases de Datos: Transaction Control

Definición
--------------------------------------------------------------------------------------------------------------------------------------------------------
Permite manejar transacciones (cambios) en la base de datos. 

Desarrollo
--------------------------------------------------------------------------------------------------------------------------------------------------------
Las transacciones se definen por 3 instrucciones:
1. **COMMIT**: Guarda todo lo que se haya realizado en la tabla, ya sea creación o eliminación de una tabla, actualizaciones, etc. Al utilizarlo, los transacciones se hacen definitivas y no hay modo de regresar a un estado anterior al COMMIT.
2. **SAVEPOINT**: Hace lo mismo que la instrucción anterior, pero los cambios no son definitivos hasta que se haga el COMMIT. Es posible regresar a un estado antes de realziar el SAVEPOINT.
3. **ROLLBACK**: Permite regresar a un estado antes de haber realizado un SAVEPOINT o un COMMIT.

Se agregaron dos ejemplos para ver el funcionamiento de las instrucciones anteriores.

***IMPORTANTE***
- Las instrucciones como **CREATE**, se almacenan de manera automatica en la base de datos, por lo que no es necesario aplicar un COMMIT cuando se utilicen.

NOTAS
--------------------------------------------------------------------------------------------------------------------------------------------------------
**NOTA #1**: Los repositorios **Bases de Datos** están hechos con base en el curso de Bases de Datos de la Facultad de Ingeniería de la UNAM. 
