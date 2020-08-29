-- TASKS
-- Get all customers and their addresses.
  SELECT "first_name", "last_name", "addresses".* FROM "customers" 
  JOIN "addresses" ON "customers".id = "addresses".customer_id;
  
-- Get all orders and their line items (orders, quantity and product).
  SELECT *, "line_items".*, "orders".* FROM "products"
  JOIN "line_items" ON "orders".id = "line_items".product_id
  JOIN "warehouse_product" ON "products".id = "warehouse_product".product_id; (not working)

-- Which warehouses have cheetos?
  SELECT *, "products".description FROM "warehouse"
  INNER JOIN "warehouse_product"  ON "warehouse_product".warehouse_id = "warehouse".id
  INNER JOIN "products" ON  "products".id = "warehouse_product".product_id
  WHERE "products".description = 'cheetos';
 
-- Which warehouses have diet pepsi?
  SELECT *, "products".description FROM "warehouse"
  INNER JOIN "warehouse_product"  ON "warehouse_product".warehouse_id = "warehouse".id
  INNER JOIN "products" ON  "products".id = "warehouse_product".product_id
  WHERE "products".description = 'diet pepsi';

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


-- How many customers do we have?


-- How many products do we carry?


-- What is the total available on-hand quantity of diet pepsi?


-- STRETCH
-- How much was the total cost for each order?

-- How much has each customer spent in total?

-- How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).
