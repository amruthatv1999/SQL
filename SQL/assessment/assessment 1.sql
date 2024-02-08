use amrutha;

create table Worker(
  worker_id int primary key,
  first_name varchar (50),
  last_name varchar (50),
  salary int,
  joining_timestamp timestamp,
  Department_name varchar(50)
  );
  insert into Worker(worker_id,first_name,last_name,salary,joining_timestamp,Department_name)
  
  value (1,'Monika','Arora',100000,'2014-02-20 9:00:00','HR'),
  (2,'Niharika','Verma',80000,'2014-11-06 9:00:00','Admin'),
  (3,'Vishal','Singhal',300000,'2014-02-20 9:00:00','HR'),
  (4,'Amitabh','Singh',500000,'2014-02-20 9:00:00','Admin'),
  (5,'Vivek','Bhati',500000,'2014-06-11 9:00:00','Admin'),
  (6,'Vipul','Diwan',200000,'2014-06-11 9:00:00','Account'),
  (7,'Satish','Kumar',75000,'2014-01-20 9:00:00','Account'),
  (8,'Geetika','Chauhan',90000,'2014-04-11 9:00:00','Admin');
  
  select * from Worker;
 
 -- Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending
 SELECT * FROM Worker
ORDER BY FIRST_NAME ASC, DEPARTMENT_name DESC;
--  Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
SELECT * FROM Worker
WHERE FIRST_NAME IN ('Vipul', 'Satish');
-- Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets
SELECT * FROM Worker
WHERE FIRST_NAME LIKE '_____h';
-- Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 50000
SELECT * FROM worker
WHERE SALARY between 50000 and 100000;
-- Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select count(first_name) from worker
group by first_name having count(first_name)<1; 
-- Write an SQL query to show the top 6 records of a table 
 SELECT * FROM worker
LIMIT 6;
-- Write an SQL query to fetch the departments that have less than five people in them
SELECT department_name, COUNT(worker_id) AS number_workers
FROM worker
GROUP BY department_name
HAVING number_workers < 5;
-- Write an SQL query to show all departments along with the number of people in there.
SELECT department_name,COUNT(worker_id) AS number_workers 
FROM worker
GROUP BY department_name ;
--  Write an SQL query to print the name of employees having the highest salary in each department
select department_name, max(salary) as max_salary
from worker
group by department_name; 

--  2) create student table

CREATE TABLE student (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50),
  Sex VARCHAR(20),
  percentage INT,
  class INT,
  sec VARCHAR(10),
  stream_ VARCHAR(25),
  DOB DATE
);

INSERT INTO student (student_id, student_name, Sex, percentage, class, sec, stream_, DOB)
VALUES 
(1001, 'surekha joshi', 'female', 82, 12, 'A', 'science', '1998-08-03'),
(1002, 'maahi agarwal', 'female', 56, 11, 'C', 'Commerce', '2008-11-23'),
(1003, 'sanam verma', 'male', 59, 11, 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'male', 63, 11, 'C', 'Commerce', '1997-05-11'),
(1005, 'Dipesh pulkit', 'male', 78, 11, 'B', 'Science', '2003-09-14'),
(1006, 'Jahanvi puri', 'female', 60, 11, 'B', 'Commerce', '2008-07-11'),
(1007, 'Sanam kumar', 'male', 23, 12, 'F', 'Commerce', '1998-08-03'),
(1008, 'Sahil saras', 'male', 56, 11, 'C', 'Commerce', '2008-07-11'),
(1009, 'Akshra agarwal', 'female', 72, 12, 'B', 'Commerce', '1996-01-10'),
(1010, 'Stuti mishra', 'female', 39, 11, 'F', 'Science', '2008-11-23'),
(1011, 'Harsh agarwal', 'male', 42, 11, 'C', 'Science', '1998-03-08'),
(1012, 'Nikunj Agarwal', 'male', 49, 12, 'C', 'Commerce', '1998-06-28'),
(1013, 'Akriti saxena', 'female', 89, 12, 'A', 'Science', '2008-11-23'),
(1014, 'Tani Rastogi', 'female', 82, 12, 'A', 'Science', '2008-11-23');


-- To display all the records form STUDENT table. 
SELECT * FROM student;

-- To display any name and date of birth from the table STUDENT. 
SELECT student_name AS StdName, DOB
FROM student;

-- To display all students record where percentage is greater of equal to 80 FROM student table 
SELECT * FROM student
WHERE percentage >= 80;

-- To display student name, stream and percentage where percentage of student is more than 80 
SELECT student_name, stream_, percentage FROM student
WHERE percentage > 80;

-- To display all records of science students whose percentage is more than 75 form student table 
SELECT * FROM student
WHERE stream_ = 'science' AND percentage > 75;









  
  
  
  

  
  
  
  
 
  
  