create database AsseWorker;
create table Worker (
WORKER_ID INT  PRIMARY KEY,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
SALARY INT ,
JOINING_DATE INT ,
DEPARTMENT VARCHAR(50) 

);
# 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

select * from worker order by FIRST_NAME ,DEPARTMENT desc;

# 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.  
SELECT FIRST_NAME, DEPARTMENT FROM worker WHERE FIRST_NAME IN ('vipul', 'satish');

# 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
select FIRST_NAME from worker where FIRST_NAME like '_____h'; 

# 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 
select * from worker where SALARY between 0 and 1;

# 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
SELECT field1, field2, COUNT(*)
FROM your_table_name
GROUP BY field1, field2
HAVING COUNT(*) > 1;

#6. Write an SQL query to show the top 6 records of a table. 

select * from worker limit 6;

# 7. Write an SQL query to fetch the departments that have less than five people in them.

select Department from worker  where WORKER_ID < 5;

# 8. Write an SQL query to show all departments along with the number of people in there.
select count(Department), Department  from worker group by department; 

# 9. Write an SQL query to print the name of employees having the highest salary in each department. 

select max(SALARY),FIRST_NAME,count(DEPARTMENT),department from worker group by DEPARTMENT;

SELECT w.FIRST_NAME, w.DEPARTMENT
FROM worker w
JOIN (
    SELECT DEPARTMENT, MAX(SALARY) AS max_salary
    FROM worker
    GROUP BY DEPARTMENT
) AS max_salaries
ON w.DEPARTMENT = max_salaries.DEPARTMENT AND w.SALARY = max_salaries.max_salary;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

