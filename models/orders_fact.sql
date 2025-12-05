{{ config(materialized='table') }}    

SELECT
    O.order_id,
    O.order_date,
    O.customer_id,
    O.status,
    O.StatusDesc,
    COUNT(DISTINCT O.order_id) AS OrderCount,
    SUM(OI.TotalPrice) AS Revenue,
FROM
    {{ ref('orders_stg') }} O
JOIN
    {{ ref('orderitems_stg') }} OI ON O.order_id = OI.order_id

GROUP BY 1,2,3,4,5