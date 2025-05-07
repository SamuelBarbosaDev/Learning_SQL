'Operators in the WHERE clause

We can operate with different operators in the WHERE clause:
=	Equal to
<	Less than
>	Greater than
<=	Less than or equal to
>=	Greater than or equal to
<>	Not equal to
!=	Not equal to
LIKE	Check if a value matches a pattern (case sensitive)
ILIKE	Check if a value matches a pattern (case insensitive)
AND	Logical AND
OR	Logical OR
IN	Check if a value is between a range of values
BETWEEN	Check if a value is between a range of values
IS NULL	Check if a value is NULL
NOT	Makes a negative result e.g. NOT LIKE, NOT IN, NOT BETWEEN'

-- Equal To
SELECT * FROM cars
WHERE brand = 'Volvo';

-- Less Than
SELECT * FROM cars
WHERE model < 1975;

-- Greater Than
SELECT * FROM cars
WHERE model > 1975;

-- Less Than or Equal To
SELECT * FROM cars
WHERE model <= 1975;

-- Greater Than or Equal to
SELECT * FROM cars
WHERE model >= 1975;

-- Not Equal To
SELECT * FROM cars
WHERE brand <> 'Volvo';

-- You will get the same result with the != operator:
SELECT * FROM cars
WHERE brand != 'Volvo'; 

'LIKE

The LIKE operator is used when you want to return all records where a column is equal to a specified pattern.

The pattern can be an absolute value like 'Volvo', or with a wildcard that has a special meaning.

There are two wildcards often used in conjunction with the LIKE operator:

    The percent sign %, represents zero, one, or multiple characters.
    The underscore sign _, represents one single character.
'

SELECT * FROM cars
WHERE model LIKE 'M%';

-- The LIKE operator is case sensitive.

'ILIKE

Same as the LIKE operator, but ILIKE is case insensitive.'
SELECT * FROM cars
WHERE model ILIKE 'm%'; 

-- AND
SELECT * FROM cars
WHERE brand = 'Volvo' AND year = 1968;

-- OR
SELECT * FROM cars
WHERE brand = 'Volvo' OR year = 1975;

-- IN
SELECT * FROM cars
WHERE brand IN ('Volvo', 'Mercedes', 'Ford'); 

'BETWEEN

The BETWEEN operator is used to check if a columns value is between a specified range of values:'
SELECT * FROM cars
WHERE year BETWEEN 1970 AND 1980;

-- IS NULL
SELECT * FROM cars
WHERE model IS NULL;

'NOT

The NOT operator can be used together with LIKE, ILIKE, IN, BETWEEN, and NULL operators to reverse the truth of the operator.
Example: NOT LIKE

Return all records where the brand does NOT start with a capital 'B' (case sensitive):'
SELECT * FROM cars
WHERE brand NOT LIKE 'B%';

'Example: NOT ILIKE

Return all records where the brand does NOT start with a 'b' (case insensitive):'
SELECT * FROM cars
WHERE brand NOT ILIKE 'b%';

'Example: NOT IN

Return all records where the brand is NOT present in this list: ('Volvo', 'Mercedes', 'Ford'):'
SELECT * FROM cars
WHERE brand NOT IN ('Volvo', 'Mercedes', 'Ford');

'Example: NOT BETWEEN

Return all records where the year is NOT between 1970 and 1980:'
SELECT * FROM cars
WHERE year NOT BETWEEN 1970 AND 1980;

'Example: IS NOT NULL

Return all records where the model is NOT null:'
SELECT * FROM cars
WHERE model IS NOT NULL;
