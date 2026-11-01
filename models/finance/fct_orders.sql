select a.orderid as order_id
        , b.customer_id
        , a.amount
from {{ ref('stg_stripe__payments') }} a
join {{ ref('stg_jaffle_shop__orders') }} b on a.orderid = b.order_id
where a.status = 'success'