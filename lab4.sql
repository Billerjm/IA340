--Q4.1
delete from name
where fips ='51'
/*This code will not delete VA from the table because the relationships are consistent and so the data cannot be deleted from a single table. 
  The recods are still in other tables.*/

--Q4.2
insert into income(fips,income,year) values('80',6000,2025)
/*This does not work because there is no state fips numbered 80.*/

--Q4.3
