-- Active: 1745318804130@@127.0.0.1@5432@ph
-- CREATE Table student(
--     id SERIAL PRIMARY  KEY,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     age INT,
--     grade CHAR(2),
--     course VARCHAR(50),
--     email VARCHAR(100),
--     dob DATE,
--     blood_group VARCHAR(5),
--     country VARCHAR(50)
-- )

INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Ayesha', 'Akter', 20, 'A+', 'Computer Science', 'ayesha.akter@example.com', '2004-05-14', 'A+', 'Bangladesh'),
('Tanvir', 'Hasan', 22, 'B', 'Electrical Engineering', 'tanvir.hasan@example.com', '2002-03-11', 'O+', 'Bangladesh'),
('Nusrat', 'Jahan', 21, 'A', 'Business Administration', 'nusrat.jahan@example.com', '2003-01-30', 'B+', 'Bangladesh'),
('Rakibul', 'Islam', 23, 'A-', 'Computer Science', 'rakibul.islam@example.com', '2001-09-25', 'A-', 'Bangladesh'),
('Mehjabin', 'Chowdhury', 20, 'B+', 'Law', 'mehjabin.chowdhury@example.com', '2004-02-10', 'O+', 'Bangladesh'),
('Sajid', 'Khan', 24, 'A', 'Computer Science', 'sajid.khan@example.com', '2000-07-18', 'AB+', 'Bangladesh'),
('Farzana', 'Mimi', 21, 'A+', 'English Literature', 'farzana.mimi@example.com', '2003-04-22', 'B+', 'Bangladesh'),
('Mahfuz', 'Rahman', 22, 'B-', 'Computer Science', 'mahfuz.rahman@example.com', '2002-12-05', 'O-', 'Bangladesh'),
('Sumaiya', 'Tasnim', 19, 'A', 'Pharmacy', 'sumaiya.tasnim@example.com', '2005-08-09', 'A+', 'Bangladesh'),
('Arif', 'Hossain', 23, 'C+', 'Civil Engineering', 'arif.hossain@example.com', '2001-11-17', 'B-', 'Bangladesh');
select * from student;
SELECT * FROM student ORDER BY age ASC;

SELECT DISTINCT blood_group  FROM student;

SELECT  * FROM student
    WHERE country = 'Bangladesh' AND age > 20;


-- two types FUNCTION postgres use--------------
-- AGGREGATE FUNCTION:
-- AVG(): Calculate the avarage of a set of VALUES
-- COUNT(): Count the number of rows in a set of VALUES
-- MAX(): Find the maximum value in a set of VALUES
-- MIN(): Find the minimum value in a set of VALUES
-- SUM(): Calculate the sum of a set of VALUES
----------------------------------------
-- SCALAR FUNCTION:
-- UPPER(): Convert a string to uppercase
-- LOWER(): Convert a string to lowercase
-- LENGTH(): Get the length of a string
-- ROUND(): Round a number to a specified number of decimal places
-- TRIM(): Remove leading and trailing spaces from a string
-- SUBSTRING(): Extract a substring from a string
-- DATE_PART(): Extract a specific part (year, month, day) from a date
-- DATE_TRUNC(): Truncate a date to a specified precision (year, month, day)
-- EXTRACT(): Extract a specific part (year, month, day) from a date
-- DATEADD(): Add a specified interval to a date
-- DATEDIFF(): Calculate the difference between two dates

SELECT SUM(age) FROM student;
SELECT COUNT(age) FROM student;

-- Null value check
SELECT * FROM student
 WHERE email IS NULL;
--  without Null values
SELECT * FROM student
 WHERE email IS NOT NULL;
SELECT * FROM student
 WHERE grade  IN('A+', 'B');
SELECT * FROM student
 WHERE grade NOT  IN('A+', 'B');
SELECT * FROM student
 WHERE dob BETWEEN '2002-01-01' AND '2005-12-31';

--  Like is casesensitive
SELECT * FROM student
 WHERE first_name LIKE 'A%';

--  ILIKE is Incasesensitive
SELECT * FROM student
 WHERE first_name ILIKE 'a%';


SELECT * FROM student
 WHERE blood_group IN('A+', 'B+') LIMIT 5;

-- pagination query
 SELECT * FROM student LIMIT 5 OFFSET 0; 
 SELECT * FROM student LIMIT 5 OFFSET 1; 

 DELETE  FROM student
 WHERE blood_group = 'A+';

UPDATE student
SET age = 22, grade = 'A+'
WHERE id = 2;


SELECT * FROM student;
