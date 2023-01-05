select customerid,segment,country,
sum(ordersprofit) as profit from
{{ ref('stg_orders') }}
group by
 customerid,segment,country
