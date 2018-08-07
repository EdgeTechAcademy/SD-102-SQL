SELECT * from city 
where district= 'California'
and population > 500000
order by population desc;

select * from country 
where continent not like '%America' and lifeexpectancy > 80
order by population desc;

select * from country
where population > 20000000 and SurfaceArea < 500000
order by Population asc;

select * from city
where population > 9000000 or Population < 500
order by population asc;