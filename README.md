# Supply Chain & Inventory Intelligence System

A SQL and Power BI analytics project exploring sales performance, product profitability, supplier delivery reliability, and inventory movements using a synthetic supply-chain dataset.

## Technologies Used

- MariaDB / MySQL
- XAMPP and phpMyAdmin
- SQL
- Microsoft Power BI Desktop
- DAX

## Database Structure

The `supply_chain_analytics` database contains seven tables:

- `products`
- `suppliers`
- `warehouses`
- `purchase_orders`
- `purchase_order_items`
- `sales`
- `inventory_movements`

It also includes four analytical views:

- `vw_inventory_summary`
- `vw_monthly_sales`
- `vw_product_performance`
- `vw_supplier_performance`

## Dataset

The synthetic dataset contains:

- 20 products
- 8 suppliers
- 4 warehouses
- 300 purchase orders
- 2,400 purchase order items
- 2,500 sales records

Inventory movements are recorded separately.

## Key Analyses

- Monthly sales revenue and units sold
- Product revenue and estimated gross profit
- Supplier on-time delivery performance
- Zero or negative stock by warehouse
- Estimated inventory valuation using current product costs

## Power BI Dashboard

The dashboard presents KPI cards for total revenue and units sold, monthly revenue trends, product profitability, and supplier delivery performance.

## Setup Instructions

1. Install XAMPP and start the MariaDB service.
2. Open phpMyAdmin.
3. Create or select the `supply_chain_analytics` database.
4. Import `database/supply_chain_analytics.sql`.
5. Open `sql/analysis_queries.sql` and run the analytical queries.
6. Open `dashboard/Supply_Chain_Dashboard.pbix` in Power BI Desktop.
7. Configure the database connection for your local MariaDB instance if prompted.

## Important Notes

- The dataset is synthetic and intended for demonstration and analytical practice.
- Gross profit is estimated using current product unit costs and may not reflect historical costs.
- Inventory valuation is an estimate based on recorded inventory movements and current unit costs.
- Results depend on the imported data and calculations.

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
