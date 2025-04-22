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

SELECT * FROM student ORDER BY age ASC;

select * from student;