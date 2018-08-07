select rating, count(*)
from film
group by rating;

select continent, round(avg(lifeExpectancy),0) as 'Avg Life Span'
from country
group by continent;

select title, replacement_cost as 'Cost'
from film
where replacement_cost in (select max(replacement_cost) from film);

select continent, format(avg(GNP),2) as 'Avg GNP'
from country
group by continent;

select region, format(sum(surfaceArea),2) as 'Total Surface Area'
from country
group by region
having sum(SurfaceArea) > 4000000
order by sum(SurfaceArea) desc;