
-- Your task is to sort the information in the provided table 'companies' by number of employees (high to low). Returned table should be in the same format as provided:
--
-- companies table schema
--
-- id
-- ceo
-- motto
-- employees
-- Solution should use pure SQL. Ruby is only used in test cases.

SELECT * FROM companies
ORDER BY employees DESC



-- You are a border guard sitting on the Canadian border. You were given a list of travelers who have arrived at your gate today. You know that American, Mexican, and Canadian citizens don't need visas, so they can just continue their trips. You don't need to check their passports for visas! You only need to check the passports of citizens of all other countries!
--
-- Select names, and countries of origin of all the travelers, excluding anyone from Canada, Mexico, or The US.
--
-- travelers table schema
--
-- name
-- country

SELECT *
FROM travelers
WHERE country NOT IN ('Canada','Mexico','USA');



-- Using only SQL, write a query that returns all rows in the custid, custname, and custstate columns from the customers table.

SELECT custid, custname, custstate
FROM customers;


-- For this challenge you need to create a simple SUM statement that will sum all the ages.
--
-- people table schema
-- id
-- name
-- age
-- select table schema
-- age_sum (sum of ages)

SELECT SUM(age) AS age_sum
FROM people;



-- For this challenge you need to create a simple SELECT statement that will return all columns from the people table WHERE their age is over 50
--
-- people table schema
-- id
-- name
-- age
-- You should return all people fields where their age is over 50 and order by the age descending

SELECT *
FROM people
WHERE age > 50
ORDER BY age DESC;



-- Clock shows h hours, m minutes and s seconds after midnight.
--
-- Your task is to write a function which returns the time since midnight in milliseconds.

select (h*60*60 + m*60 + s)*1000 as res from past



-- You have access to a table of monsters as follows:
--
-- monsters table schema
-- id
-- name
-- legs
-- arms
-- characteristics
-- Your task is to turn the numeric columns (arms, legs) into equivalent hexadecimal values.
--
-- output table schema
-- legs
-- arms

SELECT to_hex(legs) AS legs, to_hex(arms) AS arms FROM monsters



-- You received an invitation to an amazing party. Now you need to write an insert statement to add yourself to the table of participants.
--
-- participants table schema
--
-- name (string)
-- age (integer)
-- attending (boolean)
-- NOTES:
--
-- Since alcohol will be served, you can only attend if you are 21 or older
-- You can't attend if the attending column returns anything but true

INSERT INTO participants (name, age, attending)
VALUES('Prince Karl III', 66, true);

SELECT * FROM participants;



-- For this challenge you need to create a simple DISTINCT statement, you want to find all the unique ages.
--
-- people table schema
-- id
-- name
-- age
-- select table schema
-- age (distinct)

SELECT DISTINCT(age)
FROM people



-- For this challenge you need to create a simple MIN / MAX statement that will return the Minimum and Maximum ages out of all the people.
--
-- people table schema
-- id
-- name
-- age
-- select table schema
-- age_min (minimum of ages)
-- age_max (maximum of ages)
-- NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.

SELECT MIN(age) AS age_min, MAX(age) AS age_max
FROM people;



-- Simple, remove the spaces from the string, then return the resultant string.

SELECT x, REPLACE(x,' ','') AS res
FROM nospace



