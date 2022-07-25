SELECT NAME, SUM(amount) AS BALANCE
FROM Transactions INNER JOIN Users
ON Transactions.account = Users.account
GROUP BY Transactions.account
HAVING BALANCE > 10000;
