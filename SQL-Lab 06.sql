#2 Write a query that will pull all cities that are in countries with a high life expectancy. Let's just see the top 10 in order of life expectancy.
select city.name, code, lifeexpectancy
from country
join city on city.CountryCode = country.Code
order by LifeExpectancy desc limit 10;


select c.name, cl.Language, c.Population, cl.Percentage, format(round(c.Population * cl.Percentage/100,0),"#,###") as 'How many speak'
from country as c
join countrylanguage as cl on c.Code = cl.CountryCode;

select country.name, Capital, city.name
from country
join city on city.ID = country.Capital;
