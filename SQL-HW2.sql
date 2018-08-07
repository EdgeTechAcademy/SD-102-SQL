SELECT * from film
where description like '%epic%'
order by length
asc limit 10;

select * from film
where rental_rate < 1
order by replacement_cost 
desc limit 10;

select * from 
select * from film
where rating in ('G','PG','PG-13') 
  and description not like '%documentary%'
order by rental_rate
asc limit 5;

select city
from city
where city_id in
	(select city_id 
	from address
	where district in ('Texas', 'California','Missouri'));

select * from film
where description like '%database administrator%'
order by length
limit 10;

