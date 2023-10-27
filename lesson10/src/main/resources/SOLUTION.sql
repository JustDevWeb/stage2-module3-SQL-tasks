SELECT s.* FROM subject s LEFT JOIN (SELECT subject_id, AVG(mark) as avg_mark FROM Mark GROUP BY subject_id) avg_marks_per_subject ON s.id = avg_marks_per_subject.subject_id WHERE avg_marks_per_subject.avg_mark > (SELECT AVG(mark) FROM Mark);
SELECT s.* FROM student s LEFT JOIN ( SELECT DISTINCT STUDENT_ID, SUM(p.AMOUNT) AS sum_perstudent FROM PAYMENT p GROUP BY STUDENT_ID ) pmnt ON s.id = pmnt.STUDENT_ID WHERE pmnt.sum_perstudent > ( SELECT AVG(avg_sum_perstudent) FROM ( SELECT SUM(p.AMOUNT) AS avg_sum_perstudent  FROM PAYMENT p  GROUP BY STUDENT_ID  ) avg_pmnt ) ORDER BY pmnt.sum_perstudent DESC;


