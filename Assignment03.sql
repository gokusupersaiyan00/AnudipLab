mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| bankaccount              |
| e_commerce               |
| information_schema       |
| mysql                    |
| performance_schema       |
| studentinfo              |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
+--------------------------+
9 rows in set (0.00 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employees            |
| order_details        |
| orders               |
| product              |
+----------------------+
5 rows in set (0.01 sec)

mysql> select * from employees;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | Mukesh Kamti  |           50000 |
|           2 | Kripakaran    |           60000 |
|           3 | Gautam Vanam  |           70000 |
|           4 | Harisai       |           80000 |
|           5 | Manikant      |           90000 |
+-------------+---------------+-----------------+
5 rows in set (0.02 sec)

mysql> alter table employees rename employee;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from employee;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | Mukesh Kamti  |           50000 |
|           2 | Kripakaran    |           60000 |
|           3 | Gautam Vanam  |           70000 |
|           4 | Harisai       |           80000 |
|           5 | Manikant      |           90000 |
+-------------+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee where employee_salary>50000;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           2 | Kripakaran    |           60000 |
|           3 | Gautam Vanam  |           70000 |
|           4 | Harisai       |           80000 |
|           5 | Manikant      |           90000 |
+-------------+---------------+-----------------+
4 rows in set (0.02 sec)

mysql> select * from employee order by employee_salary desc;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           5 | Manikant      |           90000 |
|           4 | Harisai       |           80000 |
|           3 | Gautam Vanam  |           70000 |
|           2 | Kripakaran    |           60000 |
|           1 | Mukesh Kamti  |           50000 |
+-------------+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee order by employee_salary ;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | Mukesh Kamti  |           50000 |
|           2 | Kripakaran    |           60000 |
|           3 | Gautam Vanam  |           70000 |
|           4 | Harisai       |           80000 |
|           5 | Manikant      |           90000 |
+-------------+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> create table orders(order_id int primary key, department varchar(50) not null, amount double not null);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into orders values(101,'sales',3000),(102,'sales',4000),(103,'HR',3055),(104,'IT',5000);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|      101 | sales      |   3000 |
|      102 | sales      |   4000 |
|      103 | HR         |   3055 |
|      104 | IT         |   5000 |
+----------+------------+--------+
4 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         7000 |
| HR         |         3055 |
| IT         |         5000 |
+------------+--------------+
3 rows in set (0.01 sec)

mysql> select department, avg(amount) as total_average from orders group by department;
+------------+---------------+
| department | total_average |
+------------+---------------+
| sales      |          3500 |
| HR         |          3055 |
| IT         |          5000 |
+------------+---------------+
3 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department having sum(amount)>2000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         7000 |
| HR         |         3055 |
| IT         |         5000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | Mukesh Kamti  |           50000 |
|           2 | Kripakaran    |           60000 |
|           3 | Gautam Vanam  |           70000 |
|           4 | Harisai       |           80000 |
|           5 | Manikant      |           90000 |
+-------------+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> create table employee_info(employeeID int not null,name varchar(50) not null,department varchar(60) not null,salary double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee_info values(01,'allu arjun','HR',5000),(02,'shivani nigam','IT',7000),(03,'bharat kumar','IT',6000),(04,'choudhary neha','HR',5000),(05,'DJ Tillu','Finance',4500);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select* from employee_info;
+------------+----------------+------------+--------+
| employeeID | name           | department | salary |
+------------+----------------+------------+--------+
|          1 | allu arjun     | HR         |   5000 |
|          2 | shivani nigam  | IT         |   7000 |
|          3 | bharat kumar   | IT         |   6000 |
|          4 | choudhary neha | HR         |   5000 |
|          5 | DJ Tillu       | Finance    |   4500 |
+------------+----------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_salary from employee_info  group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |            2 |
| IT         |            2 |
| Finance    |            1 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee_info  group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        10000 |
| IT         |        13000 |
| Finance    |         4500 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department, avg(salary) as total_avg from employee_info  group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |      5000 |
| IT         |      6500 |
| Finance    |      4500 |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select department, count(*) from employee_info  group by department, salary;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        1 |
| IT         |        1 |
| Finance    |        1 |
+------------+----------+
4 rows in set (0.00 sec)

mysql> select * from employee_info;
+------------+----------------+------------+--------+
| employeeID | name           | department | salary |
+------------+----------------+------------+--------+
|          1 | allu arjun     | HR         |   5000 |
|          2 | shivani nigam  | IT         |   7000 |
|          3 | bharat kumar   | IT         |   6000 |
|          4 | choudhary neha | HR         |   5000 |
|          5 | DJ Tillu       | Finance    |   4500 |
+------------+----------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total from employee_info  group by department having count(*) > 1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.00 sec)

mysql> select department, count(*) as total from employee_info  group by department having count(*) <= 1;
+------------+-------+
| department | total |
+------------+-------+
| Finance    |     1 |
+------------+-------+
1 row in set (0.00 sec)



mysql>
       select department, count(*)  from employee_info  group by department having count(*) > 1;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.00 sec)

mysql>