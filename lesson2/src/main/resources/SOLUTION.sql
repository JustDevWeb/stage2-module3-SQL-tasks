INSERT INTO Student (NAME ,BIRTHDAY, groupnumber) VALUES ( 'John' ,'1992-11-14', 1),( 'Chris' ,'1994-11-14', 1), ( 'Carl','1990-11-14', 1);
INSERT INTO Student (NAME ,BIRTHDAY, groupnumber) VALUES ( 'Oliver','1990-11-14' , 2),( 'James','1990-11-14' , 2), ( 'Lucas','1990-11-14', 2),('Henry','1990-11-14', 2);
INSERT INTO Student (NAME ,BIRTHDAY, groupnumber) VALUES ( 'Jacob','1990-11-14' , 3),( 'Logan','1990-11-14' , 3);
INSERT INTO Student (NAME ,BIRTHDAY,groupnumber) VALUES ( 'Daniel' ,'1993-11-14', 4),( 'Joseph','19901-11-14' , 4),('Paul','1994-11-14',4);
INSERT INTO Student (NAME ,BIRTHDAY, groupnumber) VALUES ( 'Mike','1990-11-14' , 4),( 'Joseph','1990-11-14' , 4),('Paul','1990-11-14',4),('Roxi','1990-11-14',4);
INSERT INTO Student (NAME ,BIRTHDAY, groupnumber) VALUES ( 'George','1990-11-14' , 5),( 'Andrew','1995-11-14' , 5),('Mark','1990-11-14',5);
INSERT INTO SUBJECT (NAME, GRADE) VALUES ( 'Art', 1 ),('Music', 1);
INSERT INTO SUBJECT (NAME, GRADE) VALUES ( 'Geography', 2),('History', 2);
INSERT INTO SUBJECT (NAME, GRADE) VALUES ( 'PE', 3),('Math', 3);
INSERT INTO SUBJECT (NAME, GRADE) VALUES ( 'Science', 4),('IT', 4);
INSERT INTO SUBJECT (NAME, GRADE) VALUES ( 'Philosophy', 5),('Sociology', 5);
INSERT INTO PAYMENTTYPE (NAME) VALUES ( 'DAILY' ),('WEEKLY'),('MONTHLY');
INSERT INTO PAYMENT(STUDENT_ID, TYPE_ID) SELECT s.id ,(select id from PAYMENTTYPE where name = 'WEEKLY') FROM STUDENT s WHERE s.NAME = 'John';
INSERT INTO PAYMENT(STUDENT_ID ,TYPE_ID) SELECT s.id ,(select id from PAYMENTTYPE where name = 'MONTHLY') FROM STUDENT s WHERE s.NAME = 'Oliver';
INSERT INTO PAYMENT(STUDENT_ID, TYPE_ID) SELECT s.id ,(select id from PAYMENTTYPE where name = 'WEEKLY') FROM STUDENT s WHERE s.NAME = 'Henry';
INSERT INTO PAYMENT(STUDENT_ID, TYPE_ID) SELECT s.id ,(select id from PAYMENTTYPE where name = 'DAILY') FROM STUDENT s WHERE s.NAME = 'James';
INSERT INTO PAYMENT(STUDENT_ID, TYPE_ID) SELECT s.id ,(select id from PAYMENTTYPE where name = 'DAILY') FROM STUDENT s WHERE s.NAME = 'Jacob';
INSERT INTO PAYMENT(STUDENT_ID, TYPE_ID) SELECT s.id ,(select id from PAYMENTTYPE where name = 'WEEKLY') FROM STUDENT s WHERE s.NAME = 'Carl';
INSERT INTO PAYMENT(STUDENT_ID, TYPE_ID) SELECT s.id ,(select id from PAYMENTTYPE where name = 'DAILY') FROM STUDENT s WHERE s.NAME = 'Lucas';
INSERT INTO MARK(STUDENT_ID, SUBJECT_ID, MARK) VALUES ((SELECT id FROM student WHERE name = 'Chris'), (SELECT id FROM subject WHERE name = 'Art'), 8);
INSERT INTO MARK(STUDENT_ID, SUBJECT_ID, MARK) VALUES ((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'History'), 5);
INSERT INTO MARK(STUDENT_ID, SUBJECT_ID, MARK) VALUES ((SELECT id FROM student WHERE name = 'James'), (SELECT id FROM subject WHERE name = 'Geography'), 9);
INSERT INTO MARK(STUDENT_ID, SUBJECT_ID, MARK) VALUES ((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'PE'), 9);
INSERT INTO MARK(STUDENT_ID, SUBJECT_ID, MARK) VALUES ((SELECT id FROM student WHERE name = 'Mike'), (SELECT id FROM subject WHERE name = 'Sociology'), 9);
INSERT INTO MARK(STUDENT_ID, SUBJECT_ID, MARK) VALUES ((SELECT id FROM student WHERE name = 'George'), (SELECT id FROM subject WHERE name = 'Art'), 9);
INSERT INTO MARK(STUDENT_ID, SUBJECT_ID, MARK) VALUES ((SELECT id FROM student WHERE name = 'Joseph'), (SELECT id FROM subject WHERE name = 'PE'), 9);






