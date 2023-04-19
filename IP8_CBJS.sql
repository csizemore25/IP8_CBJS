use `premier_products`; 
show tables; 

-- Question 1 -- 
select * from customer; 
select * from order_line; 
select * from orders; 
select * from part; 
select * from sales_rep;

-- Question 2 --
select last_name, first_name, sales_rep_num, city from sales_rep; 

-- Question 3 -- 
select order_num, customer_num from orders; 

-- Question 4 -- 
select * from order_line
limit 2; 

-- Question 5 -- 
select * from customer 
where sales_rep_num=20; 

-- Question 6 --
select customer_name, balance, credit_limit from customer
where sales_rep_num=20; 

-- Question 7 -- 
select order_num, part_num, num_ordered, quoted_price, num_ordered*quoted_price as "total price" from order_line
where order_num=21617 and num_ordered=1; 

-- Question 8 -- 
select * from orders 
where order_date> '2010-10-20' and order_date<'2010-10-22'; 

-- Question 9 -- 
select * from part
where part_description like 'D%' and part_description like '%er';

-- Question 10 -- 
select sum(balance) from customer; 

-- Question 11 -- 
select min(balance) from customer; 

-- Question 12 -- 
select count(customer_num) from customer; 

-- Question 13 -- 
select order_num from order_line 
where quoted_price>500 and quoted_price<1000; 

-- Question 14 -- 
select c.customer_name, s.last_name, s.first_name
from customer c 
join sales_rep s on c.sales_rep_num=s.sales_rep_num; 
