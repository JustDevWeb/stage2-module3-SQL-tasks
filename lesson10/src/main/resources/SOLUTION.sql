SELECT s.* FROM subject s LEFT JOIN (SELECT subject_id, AVG(mark) as avg_mark FROM Mark GROUP BY subject_id) avg_marks_per_subject ON s.id = avg_marks_per_subject.subject_id WHERE avg_marks_per_subject.avg_mark > (SELECT AVG(mark) FROM Mark);
SELECT s.* FROM student s LEFT JOIN PAYMENT p ON s.id = p.student_id GROUP BY s.id HAVING SUM(p.AMOUNT) > (SELECT AVG(AMOUNT) FROM PAYMENT);


