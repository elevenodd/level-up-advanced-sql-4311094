SELECT e.firstName, e.lastName, e.title, 
m.firstName|| " " ||  m.lastName AS reports_to
FROM employee e
INNER JOIN employee m 
        ON e.employeeId = m.managerId

