SELECT
    order_item_id,
    order_id,
    product_name,
    quantity,
    price_usd,
    quantity * price_usd AS TotalPrice
FROM
    {{ source('raw', 'order_items') }}