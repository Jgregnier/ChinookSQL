SELECT E.EmployeeId AS "Employee ID", E.FirstName AS "Employee First Name", E.LastName AS "Employee Last Name", TOTAL(I.Total) AS "Total Sales"
FROM Employee E
JOIN Customer C ON C.SupportRepId = E.EmployeeId
JOIN Invoice I ON I.CustomerId = C.CustomerId
WHERE STRFTIME('%Y',I.InvoiceDate) = "2009"
GROUP BY(EmployeeId)
ORDER BY(I.Total) DESC
LIMIT 1