SELECT Invoice.*, COUNT(InvoiceLine.InvoiceId) AS "Number of line items on this invoice"
FROM Invoice 
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY(Invoice.InvoiceID)