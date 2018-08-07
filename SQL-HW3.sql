--  #1 Write a query that finds the biggest city in Taiwan by population.  
--  List the City name and the population in the result set.
select code, name from country
where name='taiwan';

select name, CountryCode, population from city 
where countrycode='twn'
order by population desc
limit 1;

--  #2 Write a query that finds the percentage of language spoken in Mozambique (MOZ) 
--  unaccounted for by the countrylanguage table.  Name the field 'Percent Other Languages'
select 100-sum(percentage) as 'Percent Other Languages'
from countrylanguage
where countrycode='moz';

#3 Write a query that shows the percentage of language spoken that is accounted for in each country.  
--  Rename the code field as 'Country' and the percentage accounted for as 'Percent Known Languages'.
select countrycode as 'Country', sum(percentage) as 'Percent Known Languages'
from countrylanguage
-- where isofficial='t'
group by countrycode
order by Percentage desc;

#4 Sakila devises a marketing scheme to give free rentals for life to any individual who rents and watches every movie.  
--  How much time and money would a patron have to spend to accomplish this? 
--  Calculate and display the time as hours rounded to the nearest hour and cost formatted with commas and unrounded.
select format(sum(rental_rate),2) as 'Total Rental Cost',
        round(sum(length)/60,0) as 'Total Viewing Hours'
from sakila.film;

#5 Find the most popular rentals by inventory_id from the rental table. 
--  List the inventory_id and the number of times it was rented as 'Rental Count'.
select * from inventory;
select * from rental;

Select inventory_id, count(*) as '# of Times Rented'
from rental
group by inventory_id
order by count(*) desc;
