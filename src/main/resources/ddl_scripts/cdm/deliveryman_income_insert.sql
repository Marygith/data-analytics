insert into cdm.deliveryman_income
select row_number() over () as id
    , t.*
from (
    select ddm.id as deliveryman_id-- id доставщика
        , ddm.name as deliveryman_name -- фио доставщика
        , dt.year as year -- год
        , dt.month as month -- месяц
        , count(distinct do.id) as orders_amount
        , sum(total_amount) as orders_total_cost
        , avg(rating) as rating  
        , sum(total_amount) * 0.5 as company_commission
        , 0 as deliveryman_order_income
        , sum(tips) as tips
    from dds.dm_orders do
        inner join dds.dm_time dt 
            on do.time_id = dt.id 
        inner join dds.dm_deliveries dd 
            on do.delivery_id = dd.id
        inner join dds.dm_deliverymen ddm 
            on dd.deliveryman_id = ddm.id 
    group by year
        , month
        , deliveryman_id
        , deliveryman_name
        , deliveryman_order_income
) t 
