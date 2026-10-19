-- Supply Chain & Inventory Intelligence System
-- SQL analysis using a synthetic dataset

USE supply_chain_analytics;


-- 1. Monthly Sales Trends
SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
    SUM(quantity_sold) AS units_sold,
    ROUND(SUM(quantity_sold * unit_price), 2) AS revenue
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY sales_month;


-- 2. Product Revenue and Estimated Gross Profit
SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(s.quantity_sold) AS units_sold,
    ROUND(SUM(s.quantity_sold * s.unit_price), 2) AS revenue,
    ROUND(
        SUM(s.quantity_sold * (s.unit_price - p.unit_cost)), 2
    ) AS estimated_gross_profit
FROM products AS p
JOIN sales AS s
    ON s.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY estimated_gross_profit DESC;


-- 3. Supplier Delivery Performance
SELECT
    supplier_id,
    supplier_name,
    total_orders,
    on_time_orders,
    on_time_delivery_pct,
    avg_days_vs_expected
FROM vw_supplier_performance
ORDER BY on_time_delivery_pct ASC;


-- 4. Products with Zero or Negative Stock by Warehouse
SELECT
    p.product_id,
    p.product_name,
    p.category,
    w.warehouse_name,
    SUM(im.quantity_change) AS current_stock
FROM inventory_movements AS im
JOIN products AS p
    ON p.product_id = im.product_id
JOIN warehouses AS w
    ON w.warehouse_id = im.warehouse_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category,
    w.warehouse_id,
    w.warehouse_name
HAVING SUM(im.quantity_change) <= 0
ORDER BY current_stock ASC;


-- 5. Inventory Value at Current Unit Costs
SELECT
    ROUND(SUM(stock.current_stock * p.unit_cost), 2)
        AS total_inventory_value,
    SUM(stock.current_stock) AS total_units_in_stock
FROM (
    SELECT
        product_id,
        SUM(quantity_change) AS current_stock
    FROM inventory_movements
    GROUP BY product_id
) AS stock
JOIN products AS p
    ON p.product_id = stock.product_id;
