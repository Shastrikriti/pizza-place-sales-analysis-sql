use project;
-- 1. Retrieve the total number of orders placed.
select count(distinct order_id) from order_details;


-- 2. Calculate the total revenue generated from pizza sales. 
select round(sum(quantity*price)) from order_details join
pizzas on order_details.pizza_id = pizzas.pizza_id;


-- 3. Identify the highest-priced pizza. 
select max(price) from pizzas;


-- 4. Identify the most common pizza size ordered.
select pizzas.size, count(*) as order_count 
from order_details join pizzas
on order_details.pizza_id = pizzas.pizza_id
group by pizzas.size 
order by order_count desc limit 1;


-- 5. List the top 5 most ordered pizza types along with their quantities. 
select name , count(quantity) as qty from order_details 
join pizzas on order_details.pizza_id = pizzas.pizza_id 
join pizza_type on pizzas.pizza_type_id = pizza_type.pizza_type_id
group by name
order by qty desc limit 5;


-- 6. Join the necessary tables to find the total quantity of each pizza category ordered. 
select category , sum(quantity) as qty from order_details 
join pizzas on order_details.pizza_id = pizzas.pizza_id 
join pizza_type on pizzas.pizza_type_id = pizza_type.pizza_type_id
group by category
order by qty desc;


-- 7. Determine the distribution of orders by hour of the day. 
select hour(time) as hr , count(distinct order_details.order_id) as total from order_details
join orders on order_details.order_id = orders.order_id 
group by hour(time)
order by hr ;


-- 8. Join relevant tables to find the category-wise distribution of pizzas.
select category , count(distinct order_details.order_id) from order_details join pizzas
on order_details.pizza_id = pizzas.pizza_id join pizza_type
on pizza_type.pizza_type_id = pizzas.pizza_type_id
group by category
order by category ;


-- 9. Group the orders by date and calculate the average number of pizzas ordered per day. 
select date(date) by_date , sum(quantity) from order_details join orders
on order_details.order_id = orders.order_id
group by date(date)
order by by_date;

select round(sum(quantity) / datediff(max(date),min(date))) from order_details 
join orders on order_details.order_id = orders.order_id ; 

-- 10. Determine the top 3 most ordered pizza types based on revenue.
select name , round(sum(price*quantity)) as revenue from order_details join pizzas
on order_details.pizza_id = pizzas.pizza_id join pizza_type
on pizzas.pizza_type_id = pizza_type.pizza_type_id 
group by name 
order by revenue desc limit 3; 
