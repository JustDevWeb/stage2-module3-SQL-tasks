SELECT * FROM PAYMENT WHERE type_id = ( select id from PAYMENTTYPE where name = 'MONTHLY' );
SELECT * FROM MARK WHERE subject_id = ( select id from SUBJECT where name = 'Art' );
SELECT s.* FROM student s where s.id IN ( SELECT STUDENT_ID FROM PAYMENT JOIN PAYMENTTYPE on PAYMENT.TYPE_ID = PAYMENTTYPE.ID AND PAYMENTTYPE.NAME = 'WEEKLY');
SELECT s.id, s.name, s.birthday, s.groupnumber FROM STUDENT s LEFT JOIN MARK mrk on s.id = mrk.student_id WHERE mrk.subject_id = ( select id from SUBJECT where name = 'Math');
