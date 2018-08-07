-- truncate table ny_crimes;
-- 
LOAD DATA LOCAL INFILE 'C:/Users/gtjam/Downloads/xae'
INTO TABLE ny_crimes
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
-- IGNORE 1 lines
(ComplaintNum, @FromDate, FromTime, @ToDate, ToTime, @ReportDate, KeyCode, OffenseDesc, PDCode, Description, CRM_ATPT_CPTD_CD, LawCatCode, Jurisdiction, Borough, ADDR_PCT_CD, LocationOfOccurance, PremiseType, ParksName, HADEVELOPT, XCoord, YCoord, Latitude, Longitude, Lat_Lon)
set ReportDate = STR_TO_DATE(IFNULL(@ReportDate,""), '%m/%d/%Y'),
    FromDate   = STR_TO_DATE(IFNULL(@FromDate,""),   '%m/%d/%Y'),
    ToDate     = STR_TO_DATE(IFNULL(@ToDate,""),     '%m/%d/%Y');

select * from ny_crimes limit 1000;
select count(*) from ny_crimes;

select Borough, OffenseDesc, count(*) 
from ny_crimes
where ReportDate between '2015-11-01' and '2015-11-31'
group by Borough, OffenseDesc;
