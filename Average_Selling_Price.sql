select p.product_id , ifnull(round(sum(units*price)/sum(units),2),0) as average_price
from prices p
left join unitssold us
on p.product_id = us.product_id 
and us.purchase_date between p.start_date and  p.end_date
group by product_id;