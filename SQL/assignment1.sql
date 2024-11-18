create database assignment1;
use assignment1;

create table student(std_id int primary key,std_name varchar(40),std_location varchar(40),std_rollno int);

insert into student(std_id,std_name,std_location,std_rollno) values
(1, 'Shreyas Narke', 'Pune', '11'),
(2, 'Shreya Narke', 'Pune', '12'),
(3, 'Rohan Patil', 'Mumbai', '13'),
(4, 'Sakshi Desai', 'Nagpur', '14'),
(5, 'Rajesh Sharma', 'Delhi', '15'),
(6, 'Ananya Joshi', 'Bangalore', '16'),
(7, 'Kiran Kulkarni', 'Hyderabad', '17'),
(8, 'Sneha Pawar', 'Chennai', '18'),
(9, 'Amit Verma', 'Kolkata', '19'),
(10, 'Neha Singh', 'Lucknow', '20'),
(11, 'Vikas Gupta', 'Jaipur', '21'),
(12, 'Meera Iyer', 'Surat', '22'),
(13, 'Arjun Mehta', 'Ahmedabad', '23'),
(14, 'Pooja Kumar', 'Indore', '24'),
(15, 'Aditya Thakur', 'Bhopal', '25'),
(16, 'Ritika Jain', 'Patna', '26'),
(17, 'Kabir Malhotra', 'Ranchi', '27'),
(18, 'Nisha Reddy', 'Vijayawada', '28'),
(19, 'Siddharth Yadav', 'Coimbatore', '29'),
(20, 'Komal Tiwari', 'Vadodara', '30');

#WHERE Clause - The where clause in sql is used to filter records in a dataset based on specific conditions. It allows
#you to select only rows that meet a given condition or set of conditions
#It can be used with SELECT, UPDATE, DELETE, and INSERT statements.
#It supports logical operators (AND, OR, NOT), comparison operators (=, >, <, etc.), and pattern matching (LIKE).

#1.Retrieve all records where the name is 'Shreyas Narke'.
select * 
from student 
where std_name='shreyas narke';

#2.Find all rows where the city is 'Pune'
select *
from student
where std_location= 'Pune';

#3.Retrieve records where the city is 'Pune' and the ID is greater than 5.
insert into student(std_id,std_name,std_location,std_rollno) values
(21, 'Shreyas Narke', 'Pune', '24'),
(22, 'Shreya Narke', 'Pune', '23');

select * from student;

select * from student 
where std_location='Pune' and std_id>5;

#4.Find all records where any column contains a NULL value (if applicable).
select * from student
where std_id is null or std_name is null;

#5.Select all rows where the city is not 'Pune'.
select * from student
where std_location!='Pune';

#6.Retrieve records where the ID is between 5 and 15 and the city is 'Pune'.
select * from student
where std_id between 1 and 25 and std_location='Pune' and std_rollno>15;

#7.Write a query to find all records where the ID is divisible by 2.
select * from student
where std_id%2=0 ;