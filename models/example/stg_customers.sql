WITH stg_customers AS (
   SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address
   FROM dbt_feb_AF.Customers
)

SELECT * FROM stg_customers