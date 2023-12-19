-- all customer and their sales, even if data is gone (full outer join not available in sqlite)
SELECT c.firstName,c.lastName, s.salesAmount,s.soldDate
FROM customer c
INNER JOIN sales s ON 
    c.customerid = s.customerid
-- 
UNION 
SELECT c.firstName,c.lastName, s.salesAmount,s.soldDate
FROM customer c
LEFT JOIN sales s ON 
    c.customerid = s.customerid
WHERE s.salesId IS NULL
UNION 
SELECT c.firstName,c.lastName, s.salesAmount,s.soldDate
FROM sales s
LEFT JOIN customer c ON 
    c.customerid = s.customerid
WHERE s.salesId IS NULL

