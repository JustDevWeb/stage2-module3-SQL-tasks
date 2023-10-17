SELECT MAX(BIRTHDAY) FROM STUDENT;
SELECT MIN(PAYMENT_DATE) FROM PAYMENT;
SELECT AVG(mark) FROM MARK WHERE subject_id = (select id from SUBJECT where name = 'Math');
SELECT MIN(amount) FROM PAYMENT WHERE type_id = (select id from PAYMENTTYPE where name = 'WEEKLY');