DELETE FROM STUDENT WHERE groupnumber > 4;
DELETE FROM STUDENT WHERE id IN ( select student_id from MARK where mark < 4 group by student_id );
DELETE FROM PAYMENT WHERE id = ( select id FROM PAYMENTTYPE WHERE name = 'DAILY' );
DELETE FROM MARK WHERE mark < 7;
