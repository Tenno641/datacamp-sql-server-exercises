SELECT
	dbo.InvoiceLine.InvoiceId,
	dbo.InvoiceLine.UnitPrice,
	dbo.InvoiceLine.Quantity,
	dbo.Invoice.BillingState
FROM
	dbo.InvoiceLine
LEFT JOIN dbo.Invoice ON dbo.InvoiceLine.InvoiceId = dbo.Invoice.InvoiceId;
