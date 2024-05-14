 -- Task 1 
 -- Get the number of cities in the USA
SELECT COUNT(DISTINCT Name) -- Generates a count of unique values
FROM city
WHERE CountryCode = 'USA'; -- Filtered by cities in USA

-- Task 2
-- Find out what the population and average life expectancy for people in Argentina (ARG) is.
SELECT Name, Population, LifeExpectancy
FROM country
WHERE Name = 'Argentina';

-- Task 3
-- Find out the country with the highest life expectancy
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;

-- Task 4
-- Show 25 cities that start with the letter F
SELECT Name
FROM city
WHERE Name LIKE 'F%' -- these constraints will only return results that start with F 
LIMIT 25;

-- Task 5
-- Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT ID, Name, Population
FROM city
-- ORDER BY ID
LIMIT 10;

-- Task 6
-- Create a SQL statement to find only those cities from city table whose population is larger than 2000000.
SELECT Name, Population
FROM city
WHERE Population > 2000000
ORDER BY Population DESC;

-- Task 7
-- Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.
SELECT Name
FROM city
WHERE Name LIKE 'Be%'; -- Using the % wildcard after 'Be' will display all results that start with 'Be' followed by other characters.

-- Task 8
-- Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT Name, Population
FROM city
WHERE Population BETWEEN 500000 AND 1000000
ORDER BY Population DESC;

-- Task 9
-- Create a SQL statement to find a city with the lowest population in the city table.
SELECT Name, Population
FROM city
ORDER BY Population
LIMIT 1;

-- Extra task 1
-- Create a SQL statement to find the capital of Spain (ESP).
SELECT country.Name, city.Name AS Capital_city -- Create an alias to display the capital city under an appropriate column heading.
FROM country
INNER JOIN city -- Use an inner join between the country and city tables
	ON country.Capital = city.ID -- Both country.capital and city.ID use integers. The integer for capital matches the city.ID.
WHERE country.Name = 'Spain'; -- Constraint so that only results from Spain are displayed.

-- Extra task 2
-- Create a SQL statement to list all the languages spoken in the Caribbean region.
SELECT country.Name, Language AS 'Language/s Spoken'
FROM countrylanguage
INNER JOIN country
	ON CountryCode = country.Code -- join the countrylanguage and country tables together using the country primary key (code)
WHERE country.Region = 'Caribbean'
ORDER BY country.Name;

-- Extra task 3
-- Create a SQL statement to find all cities from the Europe continent.
SELECT city.Name AS City, country.Name AS Country
FROM city
INNER JOIN country
	ON CountryCode = country.Code -- join the city and country tables together using the country primary key (code)
WHERE country.Continent = 'Europe' -- Filter to only European cities
ORDER BY city.Name;
