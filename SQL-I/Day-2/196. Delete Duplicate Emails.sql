DElETE FROM Person WHERE id NOT IN (
    SELECT did FROM (SELECT MIN(id) AS did FROM Person GROUP BY email
) AS C
);
