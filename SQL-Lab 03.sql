SELECT distinct district from city;

select distinct language from countrylanguage;

select * from city
order by Population
limit 50;

select distinct surfacearea from country
order by surfacearea
desc limit 25;

select * from country
where GovernmentForm in ('Republic', 'Federal Republic', 'Constitutional Monarchy');

select * from city
where countrycode in (select code from country where surfacearea < 10000)
order by population desc
limit 5;