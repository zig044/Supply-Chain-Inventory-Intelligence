# Supply Chain & Inventory Intelligence System

## Project Overview

A SQL and Power BI analytics project that explores sales performance, product profitability, supplier delivery reliability, and inventory movements using a synthetic supply chain dataset.

## Technologies Used

- MariaDB / MySQL
- XAMPP and phpMyAdmin
- SQL
- Microsoft Power BI Desktop
- DAX

## Database Structure

The database, `supply_chain_analytics`, contains seven tables:

- `products`
- `suppliers`
- `warehouses`
- `purchase_orders`
- `purchase_order_items`
- `sales`
- `inventory_movements`

It also contains four analytical views:

- `vw_inventory_summary`
- `vw_monthly_sales`
- `vw_product_performance`
- `vw_supplier_performance`

## Dataset

The synthetic dataset contains 20 products, 8 suppliers, 4 warehouses, 300 purchase orders, 2,400 purchase order items, and 2,500 sales records. Inventory movements are recorded separately.

All data is synthetic and is intended for demonstration and analytical practice, not as evidence of actual company performance.

## Key Analyses

1. Monthly sales revenue and units sold
2. Product revenue and estimated gross profit
3. Supplier on-time delivery performance
4. Zero or negative stock by warehouse
5. Estimated inventory valuation using current product costs

## Power BI Dashboard

The dashboard includes KPI cards for total revenue and units sold, plus a monthly revenue trend. Additional visuals may be included as they are completed.

## Setup Instructions

1. Install XAMPP with MariaDB and start the database service.
2. Open phpMyAdmin.
3. Create or select the `supply_chain_analytics` database.
4. Import `database/supply_chain_analytics.sql`.
5. Open `sql/analysis_queries.sql` and run the analytical queries against the database.
6. Open `dashboard/Supply_Chain_Dashboard.pbix` in Power BI Desktop.

The Power BI connection may need to be configured for the local MariaDB instance.

## Important Notes

- The dataset is synthetic.
- Gross profit is estimated using current product unit costs and may not reflect historical costs.
- Inventory valuation is an estimate based on recorded inventory movements and current unit costs.
- Results depend on the accuracy of the imported data and calculations.

## Project Structure

```text
Supply-Chain-Inventory-Intelligence/
├── database/
│   └── supply_chain_analytics.sql
├── sql/
│   └── analysis_queries.sql
├── dashboard/
│   └── Supply_Chain_Dashboard.pbix
├── screenshots/
└── README.md
```
