SELECT email AS Email 
FROM Person 
GROUP BY email 
HAVING COUNT(id) > 1;

USING SELF JOIN

SELECT DISTINCT P1.email AS Email
FROM Person p1 INNER JOIN Person p2
ON p1.email = p2.email
WHERE p1.id <> p2.id;
