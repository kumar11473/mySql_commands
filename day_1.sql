create table emp_detail(name varchar(25), age int, sex varchar(1), dob date, city varchar(15) , salary int);
describe emp_detail;
insert into emp_detail values("srijan" , 22 , "M" , "2001-05-23" , "balia" , 120000),
				("sushant" , 23 , "M" , "2001-05-23" , "hazaribagh" , 120000),
                ("ali" , 24 , "M" , "2001-10-23" , "banaras" , 140000);
insert into emp_detail values("satyam" , 22 , "M" , "2001-08-14" , "barhi" , 160000)  ;            
insert into emp_detail values("shashi" , 25 , "M" , "2001-08-14" , "barhi" , 100000)  ;     
insert into emp_detail values("RAM" , 35 , "F" , "2001-08-14" , "NCR" , 100000),
							("SHAYAM" , 39 , "F" , "2001-08-14" , "DELHI" , 200000),
                            ("KAMAL" , 18 , "M" , "2001-08-14" , "DELHI" , 80000);
                            
								
select distinct city from emp_detail;
select sum(salary) from emp_detail; 
select count(Name) from emp_detail; 
select avg(SALARY) from emp_detail; 

select * from emp_detail;

select * from emp_detail where city='barhi' or city='delhi' ;
select * from emp_detail where city in ('barhi' , 'balia');
 -- both of above are same 
 
 select * from emp_detail where salary between 100000 and 150000;
 select * from emp_detail where sex='f' and salary =200000;
 
   --  group --
select sex , sum(salary)   from emp_detail group by sex;   
 
 select name , salary from emp_detail order by salary;


