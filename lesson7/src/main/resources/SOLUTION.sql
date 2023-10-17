SELECT * FROM MARK WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM PAYMENT WHERE amount < 300 ORDER BY amount ASC;
SELECT * FROM PAYMENTTYPE ORDER BY name;
SELECT * FROM STUDENT ORDER BY name;
SELECT s.id,s.name,s.birthday,s.groupnumber FROM STUDENT s LEFT JOIN PAYMENT pt ON s.id = pt.student_id WHERE pt.amount > 1000 ORDER BY s.birthday ASC;
