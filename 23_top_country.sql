SELECT Customer.Country AS "Country", TOTAL(Invoice.Total) AS "Total Spent"
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY (Customer.Country) 
ORDER BY(TOTAL(Invoice.Total))DESC
LIMIT 1