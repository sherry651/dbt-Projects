select orderid as order_id
        , id as customer_id
        , amount
from {{ ref('stg_stripe__payments') }}