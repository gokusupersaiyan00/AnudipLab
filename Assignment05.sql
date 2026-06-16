
mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| bankaccount              |
| e_commerce               |
| information_schema       |
| joins                    |
| mysql                    |
| performance_schema       |
| studentinfo              |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
+--------------------------+
10 rows in set (0.07 sec)

mysql> create database StoreProcedureExample;
Query OK, 1 row affected (0.02 sec)

mysql> use StoreProcedureExample;
Database changed
mysql> create table employee(employeeID int primary key not null,Name varchar(50) not null,department varchar(50) not null,salary double not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| employeeID | int         | NO   | PRI | NULL    |       |
| Name       | varchar(50) | NO   |     | NULL    |       |
| department | varchar(50) | NO   |     | NULL    |       |
| salary     | double      | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into employee values(1,'Mukesh kamti','IT',15000),(2,'Om Singh','Sales',15000),(3,'Kripakaran Achari','Marketing',20000),(4,'Gautam Vanam','IT',25000),(5,'Harisai','CS',30000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee
    -> ;
+------------+-------------------+------------+--------+
| employeeID | Name              | department | salary |
+------------+-------------------+------------+--------+
|          1 | Mukesh kamti      | IT         |  15000 |
|          2 | Om Singh          | Sales      |  15000 |
|          3 | Kripakaran Achari | Marketing  |  20000 |
|          4 | Gautam Vanam      | IT         |  25000 |
|          5 | Harisai           | CS         |  30000 |
+------------+-------------------+------------+--------+
5 rows in set (0.00 sec)

mysql> delimiter //
mysql> create procedure getEmployeeDetails()
    -> begin
    -> select *from employee;
    -> end //
Query OK, 0 rows affected (0.02 sec)

mysql> delimiter ;
mysql> call getEmployeeDetails();
+------------+-------------------+------------+--------+
| employeeID | Name              | department | salary |
+------------+-------------------+------------+--------+
|          1 | Mukesh kamti      | IT         |  15000 |
|          2 | Om Singh          | Sales      |  15000 |
|          3 | Kripakaran Achari | Marketing  |  20000 |
|          4 | Gautam Vanam      | IT         |  25000 |
|          5 | Harisai           | CS         |  30000 |
+------------+-------------------+------------+--------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> delimiter //
mysql> create procedure getEmployeeByDepartment()
    -> begin
    -> select * from employee where department = name;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmployeeDetails();
+------------+-------------------+------------+--------+
| employeeID | Name              | department | salary |
+------------+-------------------+------------+--------+
|          1 | Mukesh kamti      | IT         |  15000 |
|          2 | Om Singh          | Sales      |  15000 |
|          3 | Kripakaran Achari | Marketing  |  20000 |
|          4 | Gautam Vanam      | IT         |  25000 |
|          5 | Harisai           | CS         |  30000 |
+------------+-------------------+------------+--------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> delimiter //
mysql> create procedure getEmployesByDepartment(in name varchar(10))
    -> begin
    -> select * from employee where department = name;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmployesByDepartment('IT');
+------------+--------------+------------+--------+
| employeeID | Name         | department | salary |
+------------+--------------+------------+--------+
|          1 | Mukesh kamti | IT         |  15000 |
|          4 | Gautam Vanam | IT         |  25000 |
+------------+--------------+------------+--------+
2 rows in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> delimiter //
mysql> create procedure getEmployeeCount(out total int)
    -> begin
    -> select count(*) into total from employee;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> call getEmployeeCount(@total);
Query OK, 1 row affected (0.01 sec)

mysql> select @total;
+--------+
| @total |
+--------+
|      5 |
+--------+
1 row in set (0.00 sec)

mysql> delimiter //
mysql> create procedure addEmployee(in id int,in name varchar(50),in department varchar(50),in salary double)
    -> begin
    -> insert into employees values(id,name,department,salary);
    -> end //
Query OK, 0 rows affected (0.02 sec)

mysql> delimiter ;
mysql> call addEmployee(106,'Rohan Singh','HR',50000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employees;
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        101 | Alice Johnson | HR         |  65000 |
|        102 | Bob Smith     | IT         |  85000 |
|        103 | Charlie Brown | IT         |  92000 |
|        104 | Diana Prince  | Marketing  |  71000 |
|        105 | Evan Wright   | Finance    |  78000 |
|        106 | Rohan Singh   | HR         |  50000 |
+------------+---------------+------------+--------+
6 rows in set (0.00 sec)





