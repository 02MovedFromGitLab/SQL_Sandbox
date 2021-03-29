SELECT *
FROM order_items oi
JOIN sql_inventory.products ip
ON oi.product_id = ip.product_id;