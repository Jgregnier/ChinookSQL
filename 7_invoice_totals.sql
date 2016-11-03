SELECT I.Total, C.Country AS "Customer Country", C.FirstName AS "Customer First Name", C.LastName AS "Customer Last Name", E.FirstName AS "Sales Agent First Name", E.LastName AS "Sales Agent Last Name"
FROM Invoice I
JOIN Customer C
ON I.CustomerId = C.CustomerId
JOIN Employee E 
ON C.SupportRepId = E.EmployeeId 
ORDER BY E.LastName 