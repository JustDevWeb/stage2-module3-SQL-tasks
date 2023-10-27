select * from PAYMENT where AMOUNT >= 500;
select * from STUDENT where BIRTHDAY < DATEADD(year ,-20,'20231014');
select * from STUDENT where GROUPNUMBER = 10 AND BIRTHDAY >= DATEADD(year, -20,'20231014');
select * from STUDENT where NAME = 'Mike' OR GROUPNUMBER IN (4,5,6);
select * from PAYMENT where PAYMENT_DATE > DATEADD(month ,-8,'20231014');
select * from STUDENT where NAME like 'A%';
select * from STUDENT where (name = 'Roxi' and groupnumber = 4) or (name = 'Tallie' and groupnumber = 9);
