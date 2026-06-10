mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| e_commerce               |
| information_schema       |
| mysql                    |
| performance_schema       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
+--------------------------+
7 rows in set (0.03 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employees            |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.01 sec)

mysql> select* from employees;
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

mysql> select* from employees limit 3;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | Mukesh Kamti  |           50000 |
|           2 | Kripakaran    |           60000 |
|           3 | Gautam Vanam  |           70000 |
+-------------+---------------+-----------------+
3 rows in set (0.02 sec)

mysql> select* from employees order by employee_salary;
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

mysql> select* from employees order by employee_name;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           3 | Gautam Vanam  |           70000 |
|           4 | Harisai       |           80000 |
|           2 | Kripakaran    |           60000 |
|           5 | Manikant      |           90000 |
|           1 | Mukesh Kamti  |           50000 |
+-------------+---------------+-----------------+
5 rows in set (0.01 sec)

mysql> select* from employees order by employee_name desc;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | Mukesh Kamti  |           50000 |
|           5 | Manikant      |           90000 |
|           2 | Kripakaran    |           60000 |
|           4 | Harisai       |           80000 |
|           3 | Gautam Vanam  |           70000 |
+-------------+---------------+-----------------+
5 rows in set (0.00 sec)

 ysql> select* from employees order by employee_salary desc;
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

mysql> select* from employees order by employee_salary desc limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           5 | Manikant      |           90000 |
|           4 | Harisai       |           80000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select* from customer;
+-------------+---------+----------+------------------+------------+---------------+----------+
| customer_id | name    | city     | email            | phone_no   | address       | pin_code |
+-------------+---------+----------+------------------+------------+---------------+----------+
| c101        | dikshya | kurla    | cgh@gmail.com    | 9321457867 | new mill road |   400070 |
| c102        | mukesh  | colaba   | mukesh@gmail.com | 6705432145 | kamati road   |   400072 |
| c103        | kutub   | wadala   | kutub@gmail.com  | 7054678909 | wadala road   |   400037 |
| c104        | anulab  | kutala   | anulab@gmail.com | 7546576789 | kutala road   |   400017 |
| c105        | kripa   | mankhurd | kripa@gmail.com  | 8433857631 |  cheeta camp  |   400031 |
+-------------+---------+----------+------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| kurla    |
| colaba   |
| wadala   |
| kutala   |
| mankhurd |
+----------+
5 rows in set (0.01 sec)

mysql> select  city from customer;
+----------+
| city     |
+----------+
| kurla    |
| colaba   |
| wadala   |
| kutala   |
| mankhurd |
+----------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------+----------+------------------+------------+---------------+----------+
| customer_id | name    | city     | email            | phone_no   | address       | pin_code |
+-------------+---------+----------+------------------+------------+---------------+----------+
| c101        | dikshya | kurla    | cgh@gmail.com    | 9321457867 | new mill road |   400070 |
| c102        | mukesh  | colaba   | mukesh@gmail.com | 6705432145 | kamati road   |   400072 |
| c103        | kutub   | wadala   | kutub@gmail.com  | 7054678909 | wadala road   |   400037 |
| c104        | anulab  | kutala   | anulab@gmail.com | 7546576789 | kutala road   |   400017 |
| c105        | kripa   | mankhurd | kripa@gmail.com  | 8433857631 |  cheeta camp  |   400031 |
+-------------+---------+----------+------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+---------+--------+------------------+------------+---------------+----------+
| customer_id | name    | city   | email            | phone_no   | address       | pin_code |
+-------------+---------+--------+------------------+------------+---------------+----------+
| c101        | dikshya | kurla  | cgh@gmail.com    | 9321457867 | new mill road |   400070 |
| c102        | mukesh  | colaba | mukesh@gmail.com | 6705432145 | kamati road   |   400072 |
| c103        | kutub   | wadala | kutub@gmail.com  | 7054678909 | wadala road   |   400037 |
| c104        | anulab  | kutala | anulab@gmail.com | 7546576789 | kutala road   |   400017 |
+-------------+---------+--------+------------------+------------+---------------+----------+
4 rows in set (0.01 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+-------------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+-------------------+
|      101 | c101        | p101       |       20 |       20000 | paytm        | 2026-06-01 00:00:00 | shipping          |
|      102 | c102        | p102       |       30 |       35000 | paytm        | 2026-06-02 00:00:00 | delivered         |
|      103 | c103        | p103       |       40 |       40000 | gpay         | 2026-06-03 00:00:00 | oreder on the way |
|      104 | c104        | p104       |       50 |       45000 | phonepe      | 2026-06-04 00:00:00 | shipping          |
|      105 | c105        | p105       |       60 |       50000 | paytm        | 2026-06-05 00:00:00 | shipping          |
+----------+-------------+------------+----------+-------------+--------------+---------------------+-------------------+
5 rows in set (0.01 sec)

mysql> select * from order_details where order_date between '2026-06-01' and '2026-06-04;
    '>
    '> ^C
mysql> select * from order_details where order_date between '2026-06-01' and '2026-06-04';
+----------+-------------+------------+----------+-------------+--------------+---------------------+-------------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+-------------------+
|      101 | c101        | p101       |       20 |       20000 | paytm        | 2026-06-01 00:00:00 | shipping          |
|      102 | c102        | p102       |       30 |       35000 | paytm        | 2026-06-02 00:00:00 | delivered         |
|      103 | c103        | p103       |       40 |       40000 | gpay         | 2026-06-03 00:00:00 | oreder on the way |
|      104 | c104        | p104       |       50 |       45000 | phonepe      | 2026-06-04 00:00:00 | shipping          |
+----------+-------------+------------+----------+-------------+--------------+---------------------+-------------------+
4 rows in set (0.01 sec)

mysql> select * from order_details where order_date not between '2026-06-01' and '2026-06-04';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      105 | c105        | p105       |       60 |       50000 | paytm        | 2026-06-05 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> select* from customer;
+-------------+---------+----------+------------------+------------+---------------+----------+
| customer_id | name    | city     | email            | phone_no   | address       | pin_code |
+-------------+---------+----------+------------------+------------+---------------+----------+
| c101        | dikshya | kurla    | cgh@gmail.com    | 9321457867 | new mill road |   400070 |
| c102        | mukesh  | colaba   | mukesh@gmail.com | 6705432145 | kamati road   |   400072 |
| c103        | kutub   | wadala   | kutub@gmail.com  | 7054678909 | wadala road   |   400037 |
| c104        | anulab  | kutala   | anulab@gmail.com | 7546576789 | kutala road   |   400017 |
| c105        | kripa   | mankhurd | kripa@gmail.com  | 8433857631 |  cheeta camp  |   400031 |
+-------------+---------+----------+------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('c101','c103','c105');
+-------------+---------+----------+-----------------+------------+---------------+----------+
| customer_id | name    | city     | email           | phone_no   | address       | pin_code |
+-------------+---------+----------+-----------------+------------+---------------+----------+
| c101        | dikshya | kurla    | cgh@gmail.com   | 9321457867 | new mill road |   400070 |
| c103        | kutub   | wadala   | kutub@gmail.com | 7054678909 | wadala road   |   400037 |
| c105        | kripa   | mankhurd | kripa@gmail.com | 8433857631 |  cheeta camp  |   400031 |
+-------------+---------+----------+-----------------+------------+---------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in('c101','c103','c105');
+-------------+--------+--------+------------------+------------+-------------+----------+
| customer_id | name   | city   | email            | phone_no   | address     | pin_code |
+-------------+--------+--------+------------------+------------+-------------+----------+
| c102        | mukesh | colaba | mukesh@gmail.com | 6705432145 | kamati road |   400072 |
| c104        | anulab | kutala | anulab@gmail.com | 7546576789 | kutala road |   400017 |
+-------------+--------+--------+------------------+------------+-------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not null;
+-------------+---------+----------+------------------+------------+---------------+----------+
| customer_id | name    | city     | email            | phone_no   | address       | pin_code |
+-------------+---------+----------+------------------+------------+---------------+----------+
| c101        | dikshya | kurla    | cgh@gmail.com    | 9321457867 | new mill road |   400070 |
| c102        | mukesh  | colaba   | mukesh@gmail.com | 6705432145 | kamati road   |   400072 |
| c103        | kutub   | wadala   | kutub@gmail.com  | 7054678909 | wadala road   |   400037 |
| c104        | anulab  | kutala   | anulab@gmail.com | 7546576789 | kutala road   |   400017 |
| c105        | kripa   | mankhurd | kripa@gmail.com  | 8433857631 |  cheeta camp  |   400031 |
+-------------+---------+----------+------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='Wadala' and address='new mill road';
Empty set (0.00 sec)

mysql> select * from customer where city='Wadala' or address='new mill road';
+-------------+---------+--------+-----------------+------------+---------------+----------+
| customer_id | name    | city   | email           | phone_no   | address       | pin_code |
+-------------+---------+--------+-----------------+------------+---------------+----------+
| c101        | dikshya | kurla  | cgh@gmail.com   | 9321457867 | new mill road |   400070 |
| c103        | kutub   | wadala | kutub@gmail.com | 7054678909 | wadala road   |   400037 |
+-------------+---------+--------+-----------------+------------+---------------+----------+
2 rows in set (0.00 sec)

mysql>