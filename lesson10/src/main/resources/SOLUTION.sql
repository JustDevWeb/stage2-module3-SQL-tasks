SELECT t.id,t.name,t.description,t.grade FROM (SELECT s.id, s.name, s.description, s.grade, avg(m.mark) OVER (PARTITION BY s.id) AS avg_window FROM subject s LEFT JOIN mark m ON s.id = m.subject_id GROUP BY s.id,m.mark) t WHERE avg_window < (SELECT avg(m.mark) FROM mark m) GROUP BY t.name,t.id ORDER BY t.id;
SELECT s.* FROM Subject s LEFT JOIN (SELECT subject_id, AVG(mark) as avg_mark FROM Mark GROUP BY subject_id) avg_marks_per_subject ON s.id = avg_marks_per_subject.subject_id WHERE avg_marks_per_subject.avg_mark > (SELECT AVG(mark) FROM Mark);


