select * from customer;

select product_name, category from product where price between 5000 and 10000;

select * from product order by price DESC;

select sum(quantity)as total_number_of_orders, avg(total_amount)as average_amount, 
max(total_amount)as highest_total, min(total_amount)as lowest_amount from orders;

select product_id , sum(quantity) from orders group by product_id;

select count (customer_id), customer_id from orders group by customer_id having count(customer_id)>2; 

select extract (month from order_date), quantity from orders;

select product_name, customer_name, order_date from orders inner join product on orders.product_id = product.product_id join customer on orders.customer_id = customer.customer_id;

select * from orders where order_date > current_date -interval '3 months';

select customer_name from customer left join orders on customer.customer_id = orders.customer_id where orders.customer_id is null;