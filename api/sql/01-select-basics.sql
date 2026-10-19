-- Task: список слизеринцев по алфавиту
-- Concepts: SELECT, WHERE, ORDER BY
SELECT fname, lname FROM characters
WHERE faculty = 'Slytherin'
ORDER BY lname;

-- Task: сколько персонажей на каждом факультете, только где больше одного
-- Concepts: GROUP BY, HAVING
-- Expected: Gryffindor 4, Slytherin 5
SELECT faculty, COUNT(*) AS cnt
FROM characters
GROUP BY faculty
HAVING COUNT(*) > 1;

-- Task: персонажи старше среднего возраста
-- Concepts: подзапрос (AVG игнорирует NULL)
-- Expected: Dumbledore, Snape
SELECT fname, lname, age
FROM characters
WHERE age > (SELECT AVG(age) FROM characters);
