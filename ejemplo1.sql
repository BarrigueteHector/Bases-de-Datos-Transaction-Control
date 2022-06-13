SQL> CREATE TABLE PERSONA(
  2  NOMBRE VARCHAR(20),
  3  APPAT VARCHAR(20),
  4  EDAD VARCHAR(2)
  5  );

Tabla creada.

SQL> 
SQL> SAVEPOINT INICIO;

Punto de grabaci�n creado.

SQL> 
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
SQL> COMMIT;

Confirmaci�n terminada.

SQL> 
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
SQL> SAVEPOINT INSERCION_2;

Punto de grabaci�n creado.

SQL> 
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
SQL> SAVEPOINT INSERCION_3;

Punto de grabaci�n creado.

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
SQL> ROLLBACK TO INSERCION_2;

Rollback terminado.

SQL> 
SQL> SELECT * FROM PERSONA;

NOMBRE               APPAT                ED                                    
-------------------- -------------------- --                                    
Itzel                Ramirez              21                                    
Carlos                                    32                                    
Daniel               Rivera               76                                    
Kim                  Ramirez              10                                    

SQL> 
SQL> DELETE PERSONA;

4 filas suprimidas.

SQL> 
SQL> ROLLBACK;

Rollback terminado.

SQL> 
SQL> SELECT * FROM PERSONA;

NOMBRE               APPAT                ED                                    
-------------------- -------------------- --                                    
Itzel                Ramirez              21                                    
Carlos                                    32                                    
Daniel               Rivera               76                                    