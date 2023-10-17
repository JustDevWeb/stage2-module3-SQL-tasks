CREATE TABLE Student ( id BIGINT AUTO_INCREMENT, name VARCHAR( 256 ), birthday DATE, groupnumber int, PRIMARY KEY (id) );
CREATE TABLE Subject ( id BIGINT AUTO_INCREMENT, name VARCHAR( 256 ), description VARCHAR ( 256 ), grade int, PRIMARY KEY (id) );
CREATE TABLE PaymentType ( id BIGINT AUTO_INCREMENT, name VARCHAR( 256 ), PRIMARY KEY (id) );
CREATE TABLE Payment ( id BIGINT AUTO_INCREMENT, type_id BIGINT, amount DECIMAL, student_id bigint , payment_date DATETIME , PRIMARY KEY (id) , FOREIGN KEY ( type_id ) REFERENCES PaymentType( id ) , FOREIGN KEY ( student_id ) REFERENCES Student(id));
CREATE TABLE Mark ( id BIGINT AUTO_INCREMENT, student_id BIGINT , subject_id BIGINT , mark int , PRIMARY KEY (id));