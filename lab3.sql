/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
*/


mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| bankaccount              |
| e_commerce               |
| information_schema       |
| mysql                    |
| performance_schema       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
+--------------------------+
8 rows in set (0.00 sec)

mysql> create database studentinfo;
Query OK, 1 row affected (0.01 sec)

mysql> use studentinfo;
Database changed
mysql> create table student(stud_id int primary key,FirstName varchar(50) not null,LastName varchar(50) not null,Age int not null,Phoneno int not null,Address varchar(100) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| stud_id   | int          | NO   | PRI | NULL    |       |
| FirstName | varchar(50)  | NO   |     | NULL    |       |
| LastName  | varchar(50)  | NO   |     | NULL    |       |
| Age       | int          | NO   |     | NULL    |       |
| Phoneno   | int          | NO   |     | NULL    |       |
| Address   | varchar(100) | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> insert into student values(01,'Mukesh','Kamti',20,620752,'Colaba Mumbai'),(02,'Kutubullah','Khan',19,620548,'Wadala Mumbai'),(03,'Gautam','Vanam',22,446765,'Bhiwandi'),(04,'Kripakaran','Achari',24,887911,'Mankhurd Mumbai'),(05,'Om','Singh',22,702567,'Wadala Mumbai');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select* from student;
+---------+------------+----------+-----+---------+-----------------+
| stud_id | FirstName  | LastName | Age | Phoneno | Address         |
+---------+------------+----------+-----+---------+-----------------+
|       1 | Mukesh     | Kamti    |  20 |  620752 | Colaba Mumbai   |
|       2 | Kutubullah | Khan     |  19 |  620548 | Wadala Mumbai   |
|       3 | Gautam     | Vanam    |  22 |  446765 | Bhiwandi        |
|       4 | Kripakaran | Achari   |  24 |  887911 | Mankhurd Mumbai |
|       5 | Om         | Singh    |  22 |  702567 | Wadala Mumbai   |
+---------+------------+----------+-----+---------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from student order by lastname;
+---------+------------+----------+-----+---------+-----------------+
| stud_id | FirstName  | LastName | Age | Phoneno | Address         |
+---------+------------+----------+-----+---------+-----------------+
|       4 | Kripakaran | Achari   |  24 |  887911 | Mankhurd Mumbai |
|       1 | Mukesh     | Kamti    |  20 |  620752 | Colaba Mumbai   |
|       2 | Kutubullah | Khan     |  19 |  620548 | Wadala Mumbai   |
|       5 | Om         | Singh    |  22 |  702567 | Wadala Mumbai   |
|       3 | Gautam     | Vanam    |  22 |  446765 | Bhiwandi        |
+---------+------------+----------+-----+---------+-----------------+
5 rows in set (0.01 sec)

mysql>