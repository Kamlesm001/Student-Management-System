--Here's an SQL project outline for a Student Management System with three interconnected tables:

--Tables:
--Students – Stores student information.
--Courses – Stores course details.
--Enrollments – Manages the relationship between students and courses (many-to-many).

SELECT * FROM STUDENTS;
SELECT * FROM COURSES;
SELECT * FROM ENROLLMENTS;

--Step 1: Create Tables

-- Students Table


 CREATE TABLE STUDENTS
 (
 STUDENTID VARCHAR(10) NOT NULL PRIMARY KEY,
 SNAME VARCHAR(30) NOT NULL CHECK (LENGTH (SNAME) BETWEEN 2 AND 30),
 SEMAIL VARCHAR(30) NOT NULL,
 BIRTHDATE DATE NOT NULL,
 CONSTRAINT UC1 UNIQUE (SEMAIL),
 CONSTRAINT UCK1 CHECK (SEMAIL LIKE '%@%' AND SEMAIL NOT LIKE '%@%@%')
  );


-- Inserting Students
INSERT INTO Students (first_name, last_name, date_of_birth, email) VALUES
('Alice', 'Johnson', '2002-05-14', 'alice.johnson@example.com'),
('Bob', 'Smith', '2001-08-22', 'bob.smith@example.com'),
('Charlie', 'Brown', '2003-02-10', 'charlie.brown@example.com');
-------------------------------------------------------------------------------------
-- Courses Table


CREATE TABLE COURSES
(
COURSEID VARCHAR(10) NOT NULL PRIMARY KEY,
CNAME VARCHAR(30) NOT NULL CHECK (LENGTH (CNAME) BETWEEN 2 AND 30),
CREDITS VARCHAR(10),
FEE DECIMAL(10,2));


-- Inserting Courses
INSERT INTO Courses (course_name, course_description, credits) VALUES
('Mathematics', 'Advanced Math concepts', 4),
('Physics', 'Basic principles of Physics', 3),
('Computer Science', 'Introduction to Programming', 5);


-------------------------------------------------------------------------------------

-- Enrollments Table (Many-to-Many Relationship)

CREATE TABLE ENROLLMENTS
  (
  ENROLLID VARCHAR(10) NOT NULL PRIMARY KEY,
  STUDENTID VARCHAR(10) NOT NULL,
  COURSEID VARCHAR(10) NOT NULL,
  ENROLLDATE DATE,
  GRADE CHAR(5),
  FOREIGN KEY (STUDENTID) REFERENCES STUDENTS(STUDENTID),
  FOREIGN KEY (COURSEID) REFERENCES COURSES(COURSEID))

ALTER TABLE ENROLLMENTS ADD GRADE CHAR(5); -----ADD TABLE COLOMN
UPDATE ENROLLMENTS SET GRADE ='A' WHERE ENROLLID= 1001; ---INSERT GRADE COLUMN VALEUS



-- Inserting Enrollments
INSERT INTO Enrollments (student_id, course_id, enrollment_date, grade) VALUES
(1, 1, '2024-01-10', 'A'),
(1, 3, '2024-01-12', 'B'),
(2, 2, '2024-01-15', 'A'),
(3, 1, '2024-01-18', 'C'),
(3, 3, '2024-01-20', 'B');
