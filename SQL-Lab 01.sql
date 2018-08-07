select * from country;

select * from country
where region='Caribbean';

select * from country 
where popluation between 6000000 and 12000000;

select * from city 
where name like '%F';

select name, localname from country
where localname <> name;

select * from rental
where rental_date > '2005-05-26'
