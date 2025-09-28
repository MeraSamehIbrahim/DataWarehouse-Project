USE DataWarehouse;


--Total Sales by Country and Product Category
SELECT
    c.country,
    p.category,
    SUM(f.sales_amount) AS total_sales
FROM
    gold.fact_sales f
JOIN
    gold.dim_customers c ON f.customer_key = c.customer_key
JOIN
    gold.dim_products p ON f.product_key = p.product_key
GROUP BY
    c.country,
    p.category
ORDER BY
    total_sales DESC;


--Sales by Gender and Product Line
SELECT
    c.gender,
    p.product_line,
    SUM(f.sales_amount) AS total_sales
FROM
    gold.fact_sales f
JOIN
    gold.dim_customers c ON f.customer_key = c.customer_key
JOIN
    gold.dim_products p ON f.product_key = p.product_key
GROUP BY
    c.gender,
    p.product_line
ORDER BY
    total_sales DESC;


--Top-Selling Products
SELECT TOP 10
    p.product_name,
    SUM(f.sales_amount) AS total_sales,
    SUM(f.quantity) AS total_quantity_sold
FROM
    gold.fact_sales f
JOIN
    gold.dim_products p ON f.product_key = p.product_key
GROUP BY
    p.product_name
ORDER BY
    total_sales DESC;
