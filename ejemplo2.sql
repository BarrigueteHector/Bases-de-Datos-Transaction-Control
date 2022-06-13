SQL> CREATE TABLE PERSONA(
  2  NOMBRE VARCHAR(20),
  3  APPAT VARCHAR(20),
  4  EDAD VARCHAR(2)
  5  );

Tabla creada.

SQL> 
SQL> SAVEPOINT INICIO; -- Este es el primer punto de salvado
  2  
SQL> SELECT * FROM PERSONA;

ninguna fila seleccionada

SQL> 
SQL> INSERT INTO PERSONA VALUES('Itzel', 'Ramirez', '21');

1 fila creada.

SQL> INSERT INTO PERSONA VALUES('Carlos', '', '32');

1 fila creada.

SQL> INSERT INTO PERSONA VALUES('Daniel', 'Rivera', '76');

1 fila creada.

SQL> 
SQL> SAVEPOINT INSERCION; -- Este es el segundo punto de salvado
  2  
SQL> SELECT * FROM PERSONA;

NOMBRE               APPAT                ED                                    
-------------------- -------------------- --                                    
Itzel                Ramirez              21                                    
Carlos                                    32                                    
Daniel               Rivera               76                                    

SQL> 
SQL> INSERT INTO PERSONA VALUES('Kim', 'Ramirez', '10');

1 fila creada.

SQL> 
SQL> SAVEPOINT INSERCION_2; -- Este es el tercer punto de salvado
  2  
SQL> SELECT * FROM PERSONA;

NOMBRE               APPAT                ED                                    
-------------------- -------------------- --                                    
Itzel                Ramirez              21                                    
Carlos                                    32                                    
Daniel               Rivera               76                                    
Kim                  Ramirez              10                                    

SQL> 
SQL> INSERT INTO PERSONA VALUES('Karen', 'Almeida', '18');

1 fila creada.

SQL> 
SQL> SAVEPOINT INSERCION_3;  -- Este es el cuarto punto de salvado
  2  
SQL> SELECT * FROM PERSONA;

NOMBRE               APPAT                ED                                    
-------------------- -------------------- --                                    
Itzel                Ramirez              21                                    
Carlos                                    32                                    
Daniel               Rivera               76                                    
Kim                  Ramirez              10                                    
Karen                Almeida              18                                    

SQL> 
SQL> ROLLBACK TO INSERCION_2;
ROLLBACK TO INSERCION_2
*
ERROR en l�nea 1:
ORA-01086: nunca se ha establecido el punto de grabaci�n ''INSERCION_2'' en 
esta sesi�n o no es v�lido 


SQL> 
SQL> SELECT * FROM PERSONA;

NOMBRE               APPAT                ED                                    
-------------------- -------------------- --                                    
Itzel                Ramirez              21                                    
Carlos                                    32                                    
Daniel               Rivera               76                                    
Kim                  Ramirez              10                                    
Karen                Almeida              18                                    

SQL> 
SQL> ROLLBACK;

Rollback terminado.

SQL> 
SQL> SELECT * FROM PERSONA;

ninguna fila seleccionada