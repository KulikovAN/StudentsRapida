--

--INNER JOIN
--то записи, которые есть есть в обоих таблицах t1 и t2
SELECT t1.key1, 
       t1.field1 as Name, 
       t1.key2 as T1Key, 
       t2.key2 as T2Key, 
       t2.field1 as City
  FROM Table1 t1 INNER JOIN Table2 t2 ON t1.key2 = t2.key2; 

--FULL JOIN
SELECT t1.key1, t1.field1 as Name, t1.key2 as T1Key, 
    t2.key2 as T2Key, t2.field1 as City
  FROM Table1 t1 FULL JOIN Table2 t2 ON t1.key2 = t2.key2 ;  

--LEFT JOIN  
ƒает все запрошенные данные из таблицы в левой части JOIN плюс данные из правой таблицы, пересекающиес€ с первой таблицей. 
Ќа рисунке 4 показана диаграмма ¬енна, иллюстрирующа€ LEFT JOIN дл€ двух таблиц.

SELECT t1.key1, 
       t1.field1 as Name, 
       t1.key2 as T1Key, 
       t2.key2 as T2Key, 
       t2.field1 as City
  FROM Table1 t1 LEFT JOIN Table2 t2 ON t1.key2 = t2.key2 ; 
  
--RIGHT JOIN
ќн выдает все запрошенные данные из таблицы, сто€щей в правой части оператора JOIN, 
плюс данные из левой таблицы, пересекающиес€ с правой. 
ƒиаграмма ¬енна дл€ RIGHT JOIN двух таблиц показана на рисунке 5.

SELECT t1.key1, 
       t1.field1 as Name, 
       t1.key2 as T1Key, 
       t2.key2 as T2Key, 
       t2.field1 as City
  FROM Table1 t1 RIGHT JOIN Table2 t2 ON t1.key2 = t2.key2 ;
  
--CROSS JOIN
SELECT t1.key1, 
    t1.field1 as Name, 
    t1.key2 as T1Key, 
    t2.key2 as T2Key, 
    t2.field1 as City
  FROM Table1 t1 CROSS JOIN Table2 t2 ;

--SELF JOIN
SELECT t1.key1, 
       t1.field1 as Name, 
       t1.field2, 
       mirror.field1 as Boss
FROM Table1 t1
   LEFT JOIN Table1 mirror ON t1.field2 = mirror.key1; 
  

--»сключение пересечени€ множеств
--LEFT JOIN
SELECT t1.key1, 
       t1.field1 as Name, 
       t1.key2 as T1Key, 
       t2.key2 as T2Key, 
       t2.field1 as City
FROM Table1 t1
  LEFT JOIN Table2 t2 ON t1.key2 = t2.key2 
  WHERE t2.key2 IS NULL; 

--Ќеравенства
SELECT t1.key1, 
       t1.field1 as Name, 
       t1.key2 as T1Key, 
       t2.key2 as T2Key, 
       t2.field1 as City
  FROM Table1 t1
    INNER JOIN Table2 t2 ON t1.key2 <= t2.key2
  WHERE t1.key1 = 3 ;  
  
--ћножественные JOIN  
SELECT t1.key1, 
       t1.field1 as Employee, 
       t2.key2, 
       t2.field1 as City,
       t3.key3, 
       t3.field1 as Profession
  FROM Table1 t1
    INNER JOIN Table2 t2 ON t1.key2 = t2.key2
    INNER JOIN Table3 t3 ON t1.key3 = t3.key3;
