-- Revising the Select Query I
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA'
  AND POPULATION > 100000;

-- Revising the Select Query II
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA'
  AND POPULATION > 120000;

--Select ALL
SELECT *
FROM CITY;

-- Select By ID
SELECT *
FROM CITY
WHERE id=1661;

-- Japanese Citie's Attributes
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Japanese Citie's Names
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Weather Observation 1
SELECT CITY, STATE
FROM STATION;

-- Weather Observation Station 2
SELECT ROUND(SUM(LAT_N),2) AS lat,
       ROUND(SUM(LONG_W,2) AS lon

-- Weather Observation Station 3
FROM STATION;
SELECT DISTINCT CITY
FROM STATION
WHERE ID%2 = 0;

-- Weather Observation Station 4
SELECT COUNT(*) - COUNT(DISTINCT CITY)
FROM STATION;

-- Weather Observation Station 5
SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY  LENGTH(CITY), CITY ASC
LIMIT 1;

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY  LENGTH(CITY), CITY ASC
LIMIT 1;

-- Weather Observation Station 6
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOU]'
ORDER BY CITY;

--Weather Observation Station 7
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$';

--Weather Observation Station 8
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOU]'
  AND CITY REGEXP '[aeiou]$';

-- Weather Observation Station 9
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOU]';

-- Weather Observation Station 10
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '[aeiou]$';

-- Weather Observation Station 11
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOU].*[aeiou]$';

--Weather Observation Station 12
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOU]|[aeiou]$';

-- Higher Than 75 Marks
SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME,3), ID;

-- Employee Names
SELECT name
FROM Employee
ORDER BY name;

-- Employee Salaries
SELECT name
FROM Employee
WHERE salary > 2000
  AND months < 10;

-- Type of Triangle
SELECT CASE
           WHEN 2 * GREATEST(A,B,C) >= (A+B+C) THEN "Not A Triangle"
           WHEN A = B AND A = C THEN "Equilateral"
           WHEN A = B OR A = C OR B = C THEN "Isosceles"
           ELSE "Scalene"
       END
FROM TRIANGLES;

-- Revising Aggregations - The Count Function
SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;

-- Revising Aggregations - The Sum Function
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

-- Revising Aggregations - Averages
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

-- Average Population
SELECT FLOOR(AVG(POPULATION))
FROM CITY;

-- Weather Observation Station 13
SELECT ROUND(SUM(LAT_N),4) AS lat
FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

-- Weather Observation Station 14
SELECT ROUND(MAX(LAT_N),4) AS lat
FROM STATION
WHERE LAT_N < 137.2345;

-- Weather Observation Station 15
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N IN
    (SELECT MAX(LAT_N)
     FROM STATION
     WHERE LAT_N < 137.2345);
