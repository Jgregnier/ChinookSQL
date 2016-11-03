SELECT COUNT(InvoiceLineId)
FROM InvoiceLine
GROUP BY (InvoiceID)