USE mydb6;
SELECT * FROM TableA
UNION -- 중복없이`
SELECT * FROM TableB;

SELECT * FROM TableA
UNION ALL -- 중복포함
SELECT * FROM TableB;

-- FULL OUTER JOIN
SELECT * FROM TableA a LEFT JOIN TableB b ON a.col1 = b.c1
UNION
SELECT * FROM TableA a RIGHT JOIN TableB b ON a.col1 = b.c1;