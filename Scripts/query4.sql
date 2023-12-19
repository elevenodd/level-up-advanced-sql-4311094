SELECT s.employeeId,e.firstName,e.lastName
FROM sales s
INNER JOIN employee e
    on s.employeeID = e.employeeID

SELECT s.employeeId, e.firstName, e.lastName, COUNT(*) AS Units_Sold
FROM sales s
INNER JOIN employee e
    ON  s.employeeId = e.employeeId
GROUP BY s.employeeId, e.firstName, e.lastName
ORDER BY Units_Sold DESC

