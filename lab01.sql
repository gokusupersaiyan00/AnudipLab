/*
Create Database StudentManagementSystem

1.Create Table student

with attribute:-
StudentID (Primary Key)
Name
Age
Address

2.Create a table with named Feedback 

with attributes:
● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback

Add 5 Records in table
*/


mysql> use StudentManagementSystem1;
Database changed
mysql> create table student(Student_id varchar(10) not null primary key,name varchar(50) not null,age int,address varchar(100) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc student;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| Student_id | varchar(10)  | NO   | PRI | NULL    |       |
| name       | varchar(50)  | NO   |     | NULL    |       |
| age        | int          | YES  |     | NULL    |       |
| address    | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into student values('S101','Mukesh Kamti',16,'Ghatkopar bhatwadi road'),('S102','Kripakaran Achari',17,'Mankhurd Cheeta camp'),('S103','Gautam Vanam',18,'Bhiwandi'),('S104','Kutub Khan',16,'wadala'),('S105','Om Singh',18,'Kurla');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0
							
mysql> select * from student;
+------------+-------------------+------+-------------------------+
| Student_id | name              | age  | address                 |
+------------+-------------------+------+-------------------------+
| S101       | Mukesh Kamti      |   16 | Ghatkopar bhatwadi road |
| S102       | Kripakaran Achari |   17 | Mankhurd Cheeta camp    |
| S103       | Gautam Vanam      |   18 | Bhiwandi                |
| S104       | Kutub Khan        |   16 | wadala                  |
| S105       | Om Singh          |   18 | Kurla                   |
+------------+-------------------+------+-------------------------+
5 rows in set (0.00 sec)

mysql> create table Feedback(Feedback_id varchar(10) not null primary key,Student_id varchar(10) not null,date datetime not null,InstructorName varchar(20) not null,Feedback varchar(100) not null,foreign key(Student_id) references student(Student_id));
Query OK, 0 rows affected (0.05 sec)

mysql> desc feedback;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| Feedback_id    | varchar(10)  | NO   | PRI | NULL    |       |
| Student_id     | varchar(10)  | NO   | MUL | NULL    |       |
| date           | datetime     | NO   |     | NULL    |       |
| InstructorName | varchar(20)  | NO   |     | NULL    |       |
| Feedback       | varchar(100) | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into Feedback values('F101','S101','2026-06-01','Rajshri','sesssion was good'),('F102','S102','2026-06-02','Meenakshi','SS session was good'),('F103','S103','2026-06-03','Rajshri','best session ever'),('F104','S104','2026-06-04','Meenakshi','session is good'),('F105','S105','2026-06-05','Rajshri','sessiopn was excellent');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Feedback;
+-------------+------------+---------------------+----------------+------------------------+
| Feedback_id | Student_id | date                | InstructorName | Feedback               |
+-------------+------------+---------------------+----------------+------------------------+
| F101        | S101       | 2026-06-01 00:00:00 | Rajshri        | sesssion was good      |
| F102        | S102       | 2026-06-02 00:00:00 | Meenakshi      | SS session was good    |
| F103        | S103       | 2026-06-03 00:00:00 | Rajshri        | best session ever      |
| F104        | S104       | 2026-06-04 00:00:00 | Meenakshi      | session is good        |
| F105        | S105       | 2026-06-05 00:00:00 | Rajshri        | sessiopn was excellent |
+-------------+------------+---------------------+----------------+------------------------+
5 rows in set (0.00 sec)

mysql>