
CREATE TABLE emp_table2 (Name VARCHAR(25), Age int, sex CHAR(1), DOJ DATE, City varchar(15), salary float, phone_num int(10));

describe emp_table2;

insert into emp_table2
values("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000, 98653545),
("Shane", 30, "M", "1999-06-25", "Seattle", 55000,986569),
("Marry", 28, "F", "2009-03-10", "Boston", 62000, 894512),
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000, 906598),
("Sara", 32, "F", "2017-10-27", "New York", 72000, 9006859),
("Ammy", 35, "F", "2014-12-20", "Seattle", 80000 , 984525);

select * from emp_table2;

--  arithmatic operators
select name, city, salary, salary+5000 as newsalary from emp_table2;
select name, city, salary, salary*1.2 as newsalary from emp_table2;
select name, city, salary, salary/2 as newsalary from emp_table2;

-- comparison operators  < = <= >= != -- 
select * from emp_table2 WHERE salary>60000;
select salary from emp_table2 WHERE salary>60000;

-- logical operators and or not between -- 
select * from emp_table2 where salary>=60000 and salary <=70000;
select * from emp_table2 where salary>70000 or city="seattle";
select * from emp_table2 where salary between 72000 and 80000; 
 -- note in 'between' opertor both lower value and upper value are included-- 


show databases;
create database learnsql;
show databases;
use learnsql;
CREATE TABLE emp_table3 (Name VARCHAR(25), Age int, sex CHAR(1), DOJ DATE, City varchar(15));
drop table emp_table3;
drop database learnsql;

use sys;
                    -- delete -- 
delete from emp_table2 where name="jimmy";

truncate table emp_table2;  -- truncate erase all the values of the table but not the structure -- 

               --  alter -> use to add columns to existing table -- alter
ALTER table emp_table2 ADD (id int );

                 -- renaming table's name -- 
alter table emp_table2 rename to emp_table2_0;
describe emp_table2_0;
 alter table doj rename to dob;    -- it will not work as "raname to" renames only table name-- 
 ALTER TABLE emp_table2_0 RENAME TO emp_table2;
 
                  -- copying the content of one table to a new table-- 
CREATE TABLE emp_detailss SELECT * FROM emp_table2;
SELECT * FROM emp_detailss;

						-- limit -> used to show top n rows--
SELECT * FROM emp_table2 LIMIT 3;    
SELECT * FROM emp_table2 order by age desc limit 3;    -- showing 3 rows whose age is largest-- 

update emp_table2 set salary=58000 where name='marry';     
SET SQL_SAFE_UPDATES=0;      
select * from emp_table2;        
UPDATE emp_table2 SET age =60 where phone_num=986569;

        -- like clause-- 
SELECT * FROM emp_table2
WHERE phone_num LIKE '90%';    

		-- for adding primary key to a already crated table-- 
ALTER TABLE emp_table2 ADD CONSTRAINT phone_num PRIMARY KEY (phoneNum); 
ALTER TABLE emp_table2 ADD CONSTRAINT phone_num PRIMARY KEY (name);  -- multiple primary key not allowed--   

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='emp_table2';