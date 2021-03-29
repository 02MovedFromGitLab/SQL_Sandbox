SELECT e.employee_id, e.first_name, e.last_name,
m.first_name AS ManagerFirstName, 
m.last_name AS ManagerLastName, m.employee_id AS ManagerEid
FROM employees e -- select table once
JOIN employees m -- select again to get manager data
ON e.reports_to = m.employee_id;