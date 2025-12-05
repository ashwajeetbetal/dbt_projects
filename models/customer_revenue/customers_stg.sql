SELECT
    customer_id,
    first_name,
    last_name,
    email,
    registration_date,
    CONCAT(first_name, ' ', last_name) AS customer_name
FROM
    {{ source('raw', 'customers') }}
    