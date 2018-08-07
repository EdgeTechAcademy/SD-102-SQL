select *
from city
where district = 'California' and population>500000 
order by population desc;

select *
from country
where continent not like '%America' and LifeExpectancy >80
order by population desc;

select *
from country
where population > 20000000 and surfacearea < 500000
order by surfacearea;

select *
from city
where population > 9000000 or population < 500
order by population;
select * FROM country;
select name, district, population from city where name like 'new%'
union
select name, IndepYear, region from country where name like 'new%';

select * FROM ccl;


CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ccl` AS
    SELECT 
        `a`.`Name` AS `Nation`,
        `b`.`Name` AS `Capital`,
        `c`.`Language` AS `Language`,
        `c`.`Percentage` AS `Percentage`
    FROM
        ((`country` `a`
        JOIN `city` `b` ON ((`b`.`ID` = `a`.`Capital`)))
        JOIN `countrylanguage` `c` ON ((`c`.`CountryCode` = `b`.`CountryCode`)))
    WHERE
        (`c`.`IsOfficial` = 'T')