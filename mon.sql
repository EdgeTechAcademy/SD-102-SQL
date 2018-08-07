select weekday(now()),
	case 
    when weekday(now()) = 0 then 'Monday'
    when weekday(now()) = 1 then 'Tuesday'
    when weekday(now()) = 2 then 'Wednesday'
    when weekday(now()) = 3 then 'Thursday'
    when weekday(now()) = 4 then 'Friday'
    when weekday(now()) = 5 then 'Saturday'
    when weekday(now()) = 6 then 'Sunday'
	else '-'
    end Day;

-- example 1
select first_name, last_name, count(*) as 'Total Rentals',
	case 
		when count(*) between 2 and 4 then 'Bronze'
		when count(*) between 5 and 7 then 'Silver'
		when count(*) >= 8            then 'Gold'
        else 								'go home'
	end as 'Membership'
from customer
join rental on rental.customer_id = customer.customer_id
where rental.rental_date between '2005-05-01' and '2005-06-01'
group by rental.customer_id
order by count(*) desc;

-- example 2A
select title, film.rental_duration, avg(datediff(return_date, rental_date)) as 'Days Kept'
from rental
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
group by film.film_id;

-- example 2B
select title, film.rental_duration, avg(datediff(return_date, rental_date)) as 'Days Kept',
case 
when rental_duration > avg(datediff(return_date, rental_date)) then 'Under'
when rental_duration < avg(datediff(return_date, rental_date)) then 'Over'
else '-'
end as 'Over/Under'
from rental 
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
group by film.film_id;

select * FROM rental

select dayofweek(rental_day) as Day
from rental;


select case 
    when weekday(rental_date) = 0 then 'Monday'
    when weekday(rental_date) = 1 then 'Tuesday'
    when weekday(rental_date) = 2 then 'Wednesday'
    when weekday(rental_date) = 3 then 'Thursday'
    when weekday(rental_date) = 4 then 'Friday'
    when weekday(rental_date) = 5 then 'Saturday'
    when weekday(rental_date) = 6 then 'Sunday'
    end as Day, count(*) as days
from rental
group by dayofweek(rental_date);


select  
    weekday(rental_date) = 1 as 'Sunday',
	weekday(rental_date) = 2 as 'Monday',
    weekday(rental_date) = 3 as 'Tuesday',
    weekday(rental_date) = 4 as 'Wednesday',
    weekday(rental_date) = 5 as 'Thursday',
    weekday(rental_date) = 6 as 'Friday',
    weekday(rental_date) = 7 as 'Saturday'
from rental;


select  
    sum(dayofweek(rental_date) = 1) as 'Sunday',
	sum(dayofweek(rental_date) = 2) as 'Monday',
    sum(dayofweek(rental_date) = 3) as 'Tuesday',
    sum(dayofweek(rental_date) = 4) as 'Wednesday',
    sum(dayofweek(rental_date) = 5) as 'Thursday',
    sum(dayofweek(rental_date) = 6) as 'Friday',
    sum(dayofweek(rental_date) = 7) as 'Saturday'
from rental;


create database GTJ;
use GTJ;
create table orders  (
order_id int not null auto_increment ,
customer_id int ,
delivery_address_id  int,
order_date  date, 
total decimal (13, 4),
tax  decimal(13, 4 ),
primary key (order_id) 
);


create table order_items  (
item_id int not null auto_increment, 
order_id int, 
product_id int, 
sell_price decimal (13, 4 ),
primary key (item_id), 
foreign key (order_id) references orders (order_id) 
);

create table products (
product_id  int not null auto_increment ,
category_id int ,
name varchar(50),
description varchar(100),
price decimal(13, 4), 
image_path varchar(50), 
primary key (product_id) 
);

create table categories (
category_id int not null auto_increment primary key,
name varchar(50), 
description varchar(100)
);

