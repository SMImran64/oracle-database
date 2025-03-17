 create table sadiar(
 id number(8),
 Name varchar2(30),
 Email varchar2(30));
 
-- add primary key
 
 Alter table sadiar 
 add CONSTRAINT sad_id_pk PRIMARY KEY (id);
 
 DESCRIBE sadiar;
 
-- add modify data size
 
  Alter table sadiar 
  MODIFY name VARCHAR2(50);
  
--  Rename the column name
  
   Alter table sadiar
   rename column name to username;
   
   
--   drop constraint

  Alter table sadiar
  drop CONSTRAINT sad_id_pk;
  
  

  
   
 