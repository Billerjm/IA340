--Q4.1
delete from name
where fips ='51'
/*This code will not delete VA from the table because the relationships are consistent and so the data cannot be deleted from a single table. 
  The recods are still in other tables.*/

--Q4.2
insert into income(fips,income,year) values('80',6000,2025)
/*This does not work because there is no state fips numbered 80.*/

--Q4.5
Yes, it does recognize the chart.

--Q.6 
SELECT n.name AS state, i.income
FROM income i
JOIN name n ON i.fips = n.fips
ORDER BY i.income DESC
LIMIT 1;
 -- Yes, the code does work.
--Q4.7
SELECT 
    p_start.year AS start_year,
    p_end.year AS end_year,
    ((p_end.pop - p_start.pop) / p_start.pop::decimal) * 100 AS population_growth_percentage
FROM 
    population p_start
JOIN 
    population p_end ON p_start.fips = p_end.fips
JOIN 
    name n ON p_start.fips = n.fips
WHERE 
    n.name = 'VA' -- Assuming 'VA' is the abbreviation or name for Virginia
    AND p_end.year = p_start.year + 5
ORDER BY 
    p_start.year DESC
LIMIT 1;

 -- No the code does not work.

-- Q4.8 
-- No sometimes it works and sometimes it does not work.
