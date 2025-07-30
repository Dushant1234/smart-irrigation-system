create database t1;
use t1;
create table  t2( id int primary key,name varchar(50), cgpa float,institute varchar(50));
insert into t2 (id,name,cgpa,institute)
values
(1,"Ali",3.2,"Nust"),
(2,"wahid",3.7,"suffa"),
(3,"sahid",3.5,"suffa");
-- Create table t4
CREATE TABLE t4 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    designation VARCHAR(50),
    salary FLOAT,
    joit2ning_date DATE
);
use t1;

-- Insert values into t4
INSERT INTO t4 (id, name, designation, salary, joining_date)
 VALUES
(4, 'sunny', 'auditor', 3400.0, '2012-03-12'),
(5, 'johny', 'Editor', 6400.0, '2007-08-12'),
(6, 'tony', 'developer', 8400.0, '2004-03-22'),
(7, 'rohan', 'finance', 6400.0, '2014-07-16');
select * from t4;
show tables;
describe t2;
describe t4;
 select id,name from t2;
select name,designation from t4;
truncate table t3;
Alter table t2;
Add city varchar(50);
values
update t2 set  city = "karachi" where id =1;
select distinct name,id from t2;
select name as identiy from t2; -- aliaasis give temporary name
select name from t2 where id =02;
select name from t2 where cgpa=3.5;
select name from t2 where institute <>"Nust";
select name from t2 where name ="Rahid" or cgpa=3.6;
select name from t2 where not cgpa > 3.5;
select *from  t2 where id between 4 And 6; -- 4 and; 6 are also included ;
select * from t2 where Institute In("Suffa");
select * from t2 where Institute In("IBA");
-- select * form t2 where city In("Mumbai","Karachi");
-- select * form t2 where city Not In("Mumbai","Karachi");
-- ********************limit clause********************
select * from t2 where cgpa > 3.3
limit 2;
-- ************* order by ************
select * from  t2 order by cgpa asc;
select * from t2 order by name desc;
select * from t2 order by name desc;

-- *************Agregatefunctions**** these are .count(),max(),min(),sum(),.avg();
select cgpa
from t2;
-- goruo by ***************
select city from t2 
group by city; -- kitne log log kon se city sab ke ke cities ke nam bataye ga 
select distinct city from t2;
select city from t2;
select city count(id )
from t2;
Group by  city;
-- erro by finding code :seach mysql error code 1055;

select city ,name count(id)
from t2
group by city,name;y 

-- practice questions 
-- write the query to find avg marks in each city in ascending order;
select city avg (marks)
from t2
 group by city 
 order by avg (marks); -- it arrange by defualt in ascending order;
 select count (name) ,city 
 from t2 group by city 
 having max marks > 90;
 -- *******************having clause***: it similar as where class but it is used in for maximum groups 
select count (name) ,city 
 from t2 group by city 
 having max marks > 90;
 select city from student table
 group by city 
 
select city from student where  grade =A
group by city
having max (marsk)> 90
order by city asc or desc;
-- update existing rows *********************
update student
 set grade ="o"
 where grade ="A";
 update student set marks =82
 where rollno =102;
 
 update student  set grade = "B"
where marks between 80 and 90;
select * from student;
 -- delete to delete some existing rows *****************
 delete from student
where marks <50;
select *from student;
-- forigrn key ;*************************

