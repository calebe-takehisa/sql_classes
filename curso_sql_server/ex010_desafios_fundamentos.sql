--DESAFIOS FUNDAMENTOS SQL

/* QUANTOS PRODUTOS TEMOS CADASTRADOS NO SISTEMA QUE CUSTAM MAIS QUE 1500 DOLARES? */

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500


/* QUANTAS PESSOAS TEMOS COM O SOBRENOME QUE INICIA COM A LETRA P? */

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'


/* EM QUANTAS CIDADES �NICAS EST�O CADASTRADOS NOSSOS CLIENTES? */

SELECT COUNT(DISTINCT(City))
FROM Person.Address


/* QUAIS S�O AS CIDADES �NICAS QUE TEMOS CADASTRADOS EM NOSSO SISTEMA? */

SELECT DISTINCT(City)
FROM Person.Address
ORDER BY City

/* QUANTOS PRODUTOS VERMELHOS TEM PRE�O ENTRE 500 A 1000 DOLARES? */

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE
Color = 'RED'
AND
ListPrice BETWEEN 500 AND 1000


/* QUANTOS PRODUTOS CADASTRADOS TEM A PALAVRA 'ROAD' NO NOME DELES? */

SELECT COUNT(Name)
FROM Production.Product
WHERE Name LIKE '%ROAD%'