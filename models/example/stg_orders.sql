
-- Use the `ref` function to select from other models-

SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    o.Order_Date
FROM
    data-eng-week3-af.dbt_feb_AF.Orders o
JOIN
    {{ ref("stg_customers") }} c ON o.Customer_ID = c.Customer_ID
JOIN
    data-eng-week3-af.dbt_feb_AF.Products p ON o.Product_ID = p.Product_ID