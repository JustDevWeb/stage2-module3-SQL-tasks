SELECT s.id,s.name,s.birthday,s.groupnumber FROM STUDENT s LEFT JOIN (SELECT student_id, avg(mark) as avgmark FROM MARK GROUP BY student_id) mrk ON s.id = mrk.student_id WHERE avgmark > 8 ORDER BY avgmark DESC;
SELECT s.id,s.name FROM STUDENT s LEFT JOIN (SELECT student_id, min(mark) as minmark FROM MARK GROUP BY student_id) mrk ON s.id = mrk.student_id WHERE minmark > 7 ORDER BY minmark;
SELECT s.id,s.name, count(pmt.student_id) as paids FROM STUDENT s LEFT JOIN (SELECT payment_date, student_id FROM PAYMENT) pmt ON s.id = pmt.student_id WHERE YEAR(pmt.payment_date) = 2019 GROUP BY s.id,s.name HAVING paids > 2;

