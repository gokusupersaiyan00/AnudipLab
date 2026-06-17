/*
Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.

*/

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
| storeprocedureexample    |
| studentinfo              |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
+--------------------------+
11 rows in set (0.01 sec)

mysql> create database Studentmanagementsystem2;
Query OK, 1 row affected (0.02 sec)

mysql> Use  Studentmanagementsystem2;
Database changed
mysql> create table Student(Student_Id int primary key not null,First_Name varchar(50) not null,Last_Name varchar(50) not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc Student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Student_Id | int         | NO   | PRI | NULL    |       |
| First_Name | varchar(50) | NO   |     | NULL    |       |
| Last_Name  | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into Student values(101,'Mukesh','Kamti'),(102,'Kripakaran','Achari'),(103,'Om','Singh'),(104,'Gautam','Vanam'),(105,'Vansh','Tiwari'),(106,'Ayush','Singh');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from Student;
+------------+------------+-----------+
| Student_Id | First_Name | Last_Name |
+------------+------------+-----------+
|        101 | Mukesh     | Kamti     |
|        102 | Kripakaran | Achari    |
|        103 | Om         | Singh     |
|        104 | Gautam     | Vanam     |
|        105 | Vansh      | Tiwari    |
|        106 | Ayush      | Singh     |
+------------+------------+-----------+
6 rows in set (0.00 sec)

mysql> create  table Course(Course_Id int primary key not null, Course_Name varchar(50) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc Course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Course_Id   | int         | NO   | PRI | NULL    |       |
| Course_Name | varchar(50) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into Course values(201,'Data Analyst'),(202,'Cyber Security'),(203,'Finance'),(204,'Business Analyst'),(205,'Graphic Designer'),(206,'Interior Designer');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from Course;
+-----------+-------------------+
| Course_Id | Course_Name       |
+-----------+-------------------+
|       201 | Data Analyst      |
|       202 | Cyber Security    |
|       203 | Finance           |
|       204 | Business Analyst  |
|       205 | Graphic Designer  |
|       206 | Interior Designer |
+-----------+-------------------+
6 rows in set (0.00 sec)

mysql> create table Enrollment(Enrollment_Id int primary key not null,Student_Id int, Course_Id int, foreign key (Student_Id) references Student(Student_Id), foreign key (Course_Id) references Course(Course_Id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc Enrollment;
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| Enrollment_Id | int  | NO   | PRI | NULL    |       |
| Student_Id    | int  | YES  | MUL | NULL    |       |
| Course_Id     | int  | YES  | MUL | NULL    |       |
+---------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into Enrollment values(01,101,201),(02,102,202),(03,103,203),(04,104,204),(05,105,205),(06,106,206);
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from Enrollment;
+---------------+------------+-----------+
| Enrollment_Id | Student_Id | Course_Id |
+---------------+------------+-----------+
|             1 |        101 |       201 |
|             2 |        102 |       202 |
|             3 |        103 |       203 |
|             4 |        104 |       204 |
|             5 |        105 |       205 |
|             6 |        106 |       206 |
+---------------+------------+-----------+
6 rows in set (0.00 sec)

mysql> select * from Student;
+------------+------------+-----------+
| Student_Id | First_Name | Last_Name |
+------------+------------+-----------+
|        101 | Mukesh     | Kamti     |
|        102 | Kripakaran | Achari    |
|        103 | Om         | Singh     |
|        104 | Gautam     | Vanam     |
|        105 | Vansh      | Tiwari    |
|        106 | Ayush      | Singh     |
+------------+------------+-----------+
6 rows in set (0.00 sec)

mysql> select * from Course;
+-----------+-------------------+
| Course_Id | Course_Name       |
+-----------+-------------------+
|       201 | Data Analyst      |
|       202 | Cyber Security    |
|       203 | Finance           |
|       204 | Business Analyst  |
|       205 | Graphic Designer  |
|       206 | Interior Designer |
+-----------+-------------------+
6 rows in set (0.00 sec)

mysql> select  Student.Student_Id, Student.First_Name, Student.Last_Name, Course.Course_Id, Course.Course_Name from Enrollment  inner join Student on Enrollment.Student_Id = Student.Student_Id inner join Course on Enrollment.Course_Id=Course.Course_Id;
+------------+------------+-----------+-----------+-------------------+
| Student_Id | First_Name | Last_Name | Course_Id | Course_Name       |
+------------+------------+-----------+-----------+-------------------+
|        101 | Mukesh     | Kamti     |       201 | Data Analyst      |
|        102 | Kripakaran | Achari    |       202 | Cyber Security    |
|        103 | Om         | Singh     |       203 | Finance           |
|        104 | Gautam     | Vanam     |       204 | Business Analyst  |
|        105 | Vansh      | Tiwari    |       205 | Graphic Designer  |
|        106 | Ayush      | Singh     |       206 | Interior Designer |
+------------+------------+-----------+-----------+-------------------+
6 rows in set (0.00 sec)

mysql>