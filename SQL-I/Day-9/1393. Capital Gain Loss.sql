SELECT stock_name, (SUM(if(operation = 'Sell', price, 0))  -  SUM(if(operation = 'Buy', price, 0))) AS  capital_gain_loss 
FROM Stocks
GROUP BY stock_name;

//Method 2

SELECT stock_name,
SUM(
    CASE 
        WHEN operation = 'Buy' THEN -price
        ELSE price
    END 
) AS capital_gain_loss
FROM Stocks
GROUP By stock_name;
