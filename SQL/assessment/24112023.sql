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

 
 
 
  
  
  
  

  
  
  
  
 
  
  