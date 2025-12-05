SELECT
    order_id,
    customer_id,
     order_date,
    status,
    CASE
        WHEN Status = '01' THEN 'In Progress'
        WHEN Status = '02' THEN 'Completed'
        WHEN Status = '03' THEN 'Cancelled'
        ELSE NULL
    END AS StatusDesc,
    current_timestamp as dbt_updated_at
FROM
    {{ source('raw', 'orders') }}