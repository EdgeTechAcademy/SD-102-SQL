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