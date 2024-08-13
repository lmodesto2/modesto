-- TABLE
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE reservas(
  
 	id int(3) UNIQUE,
  	nome_cliente varchar(30) not NULL,
  	quarto varchar(3) not NULL,
  	data_entrada date,
  	data_saida date
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
