mysql> create database joins;
ERROR 1007 (HY000): Can't create database 'joins'; database exists
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
10 rows in set (0.00 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int not null,department_name varchar(20) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> alter table department add constraint primary key(department_id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(20) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into department values(01,'HR'),(02,'Marketing'),(03,'sales'),(04,'IT');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | Marketing       |
|             3 | sales           |
|             4 | IT              |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> create table employee(employee_id int not null primary key,employee_name varchar(20) not null,department_id int,foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(20) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(01,'Mukesh',1),(02,'KripaKaran',4),(03,'Guatam',2),(04,'Kutub',null),(05,'Om',2);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(20) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | Mukesh        |             1 |
|           2 | KripaKaran    |             4 |
|           3 | Guatam        |             2 |
|           4 | Kutub         |          NULL |
|           5 | Om            |             2 |
+-------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | Marketing       |
|             3 | sales           |
|             4 | IT              |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee inner join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Mukesh        | HR              |
| Guatam        | Marketing       |
| Om            | Marketing       |
| KripaKaran    | IT              |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Mukesh        | HR              |
| KripaKaran    | IT              |
| Guatam        | Marketing       |
| Kutub         | NULL            |
| Om            | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee right join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Mukesh        | HR              |
| Guatam        | Marketing       |
| Om            | Marketing       |
| NULL          | sales           |
| KripaKaran    | IT              |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Mukesh        | IT              |
| Mukesh        | sales           |
| Mukesh        | Marketing       |
| Mukesh        | HR              |
| KripaKaran    | IT              |
| KripaKaran    | sales           |
| KripaKaran    | Marketing       |
| KripaKaran    | HR              |
| Guatam        | IT              |
| Guatam        | sales           |
| Guatam        | Marketing       |
| Guatam        | HR              |
| Kutub         | IT              |
| Kutub         | sales           |
| Kutub         | Marketing       |
| Kutub         | HR              |
| Om            | IT              |
| Om            | sales           |
| Om            | Marketing       |
| Om            | HR              |
+---------------+-----------------+
20 rows in set (0.00 sec)

mysql>

