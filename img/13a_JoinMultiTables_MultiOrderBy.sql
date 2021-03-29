USE sql_invoicing;

SELECT c.client_id, c.name, 
c.city, p.payment_id, p.invoice_id, 
p.amount, p.date, pm.name AS payment_method
FROM clients c
JOIN payments p
ON c.client_id = p.client_id
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id
ORDER BY client_id ASC, date;