SELECT I.*, E.FirstName as "Sales Agent First Name", E.LastName as "Sales Agent Last Name"
FROM Invoice I
JOIN Customer C
ON I.CustomerId = C.CustomerId
JOIN Employee E 
ON C.SupportRepId = E.EmployeeId 
ORDER BY E.LastName 