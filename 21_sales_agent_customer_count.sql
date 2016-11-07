SELECT E.FirstName AS "Employee First Name", E.LastName AS "Employee Last Name", COUNT(C.CustomerId) AS "Number Of Customers"
FROM Employee E
JOIN Customer C ON E.EmployeeId = C.SupportRepId
GROUP BY (E.EmployeeId)
