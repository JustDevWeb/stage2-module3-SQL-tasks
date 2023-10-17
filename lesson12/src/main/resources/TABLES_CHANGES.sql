ALTER TABLE PAYMENT DROP CONSTRAINT payment_student_id_fkey;
ALTER TABLE PAYMENT DROP CONSTRAINT payment_type_id_fkey;
ALTER TABLE MARK DROP CONSTRAINT mark_student_id_fkey;
ALTER TABLE PAYMENT ADD CONSTRAINT payment_student_id_fkey FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE PAYMENT ADD CONSTRAINT payment_type_id_fkey FOREIGN KEY (TYPE_ID) REFERENCES paymenttype (id) ON DELETE CASCADE;
ALTER TABLE MARK ADD CONSTRAINT mark_student_id_fkey FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;

