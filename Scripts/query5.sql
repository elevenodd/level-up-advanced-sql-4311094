SELECT e.employeeId, e.firstName,e.lastName,s.salesAmount,s.soldDate,
MAX(s.salesAmount) AS HighestSales,
MIN(s.salesAmount) AS LowestSales, 
count(salesId) AS Num_of_Sales
from sales s
INNER JOIN employee e
    ON s.employeeId = e.employeeId
WHERE s.soldDate >= date('now','start of year')
GROUP BY e.employeeId,e.firstName,e.lastName
ORDER BY Num_of_Sales DESC



