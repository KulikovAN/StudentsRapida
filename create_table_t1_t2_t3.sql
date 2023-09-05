--
--http://www.k-press.ru/cs/2009/3/join/join.asp#ID0EHLAC
===============================
--создание и заполнение таблиц
--sozdanie tabliz
===============================
/*
DROP TABLE Table1 ;
DROP TABLE Table2 ;
DROP TABLE Table3 ;
*/

CREATE TABLE Table1 (
  key1 INT NOT NULL,
  field1 VARCHAR(50),
  field2 INT,
  key2 INT NOT NULL,
  key3 INT NOT NULL,
  PRIMARY KEY (key1));
  
  
CREATE TABLE Table2 (
  key2 INT NOT NULL,
  field1 VARCHAR(50),
  field2 VARCHAR(1),
  field3 VARCHAR(1),
  PRIMARY KEY (key2));
  
    
  
CREATE TABLE Table3 (
  key3 INT NOT NULL,
  field1 VARCHAR(50),
  PRIMARY KEY (key3));
  
INSERT INTO Table1 VALUES (3, 'Erik', 8, 1, 6) ;
INSERT INTO Table1 VALUES (5, 'John', 3, 4, 4) ;
INSERT INTO Table1 VALUES (6, 'Mark', 3, 7, 1) ;
INSERT INTO Table1 VALUES (7, 'Peter', 6, 8, 5) ;
INSERT INTO Table1 VALUES (8, 'Harry', 0, 9, 2) ;

INSERT INTO Table2 VALUES (1, 'New York', 'A', 'N') ;
INSERT INTO Table2 VALUES (2, 'Sao Paulo', 'B', 'N') ;
INSERT INTO Table2 VALUES (4, 'Paris', 'C', 'Y') ;
INSERT INTO Table2 VALUES (5, 'London', 'C', 'Y') ;
INSERT INTO Table2 VALUES (6, 'Rome', 'C', 'Y') ;
INSERT INTO Table2 VALUES (9, 'Madrid', 'C', 'Y') ;
INSERT INTO Table2 VALUES (0, 'Bangalore', 'D', 'N') ;

INSERT INTO Table3 VALUES (1, 'Engineer') ;
INSERT INTO Table3 VALUES (2, 'Surgeon') ;
INSERT INTO Table3 VALUES (3, 'DBA') ;
INSERT INTO Table3 VALUES (4, 'Lawyer') ;
INSERT INTO Table3 VALUES (5, 'Teacher') ;
INSERT INTO Table3 VALUES (6, 'Actor') ;
  
commit ;

