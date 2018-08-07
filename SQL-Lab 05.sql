select title, replacement_cost-rental_rate
from film
order by replacement_cost-rental_rate desc;

select title, round(rental_rate/length,2)
from film
order by rental_rate/length desc;

select name as country, round(gnp/surfaceArea,0) as 'GNP per sauare km'
from country
order by gnp/surfaceArea desc;

select format(sum(amount),2) as 'Gross Income'
from payment
where payment_date between '2005-06-01' and '2005-06-31';