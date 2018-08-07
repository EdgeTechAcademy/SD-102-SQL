select * 
from city
where CountryCode = 'USA' 
and Population > 1000000;

select *
from country
where Continent = 'North America'
and population < 50000
and LifeExpectancy >= 75;