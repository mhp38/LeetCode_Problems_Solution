# Write your MySQL query statement below
select p.product_id,ifnull(ROUND(SUM(u.units * p.price)/SUM(u.units),2),0) as average_price
from Prices p  left join UnitsSold u
on p.product_id = u.product_id AND (u.purchase_date BETWEEN p.start_date and p.end_date)
group by product_id;

