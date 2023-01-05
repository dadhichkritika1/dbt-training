select PRODUCTID,productname,category,subcategory,
sum(ordersprofit) as profit 
from {{ ref('stg_orders') }}
group by PRODUCTID,productname,category,subcategory 