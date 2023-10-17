select * from PAYMENT where AMOUNT >= 500;
select * from STUDENT where BIRTHDAY < DATEADD(year ,-25,'20231014');
select * from STUDENT where GROUPNUMBER = 10 AND BIRTHDAY > DATEADD(year, -20,'20231014');
select * from STUDENT where NAME = 'Mike' OR GROUPNUMBER IN (4,5,6);
select * from PAYMENT where PAYMENT_DATE > DATEADD(month ,8,CURDATE());
select * from STUDENT where NAME like 'a%';
select * from STUDENT where (NAME = 'Roxi' AND GROUPNUMBER = 4) OR (NAME = 'Talie' AND GROUPNUMBER = 9);