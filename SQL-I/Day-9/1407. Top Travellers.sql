SELECT Users.name, if(SUM(distance) IS NULL, 0, SUM(distance))AS travelled_distance
FROM Users LEFT JOIN Rides 
ON Users.id = Rides.user_id
GROUP BY Users.id
ORDER BY travelled_distance DESC, Users.name;

-----------

SELECT Users.name, ifnull(SUM(distance), 0) AS travelled_distance
FROM Users LEFT JOIN Rides 
ON Users.id = Rides.user_id
GROUP BY Users.id
ORDER BY travelled_distance DESC, Users.name;
