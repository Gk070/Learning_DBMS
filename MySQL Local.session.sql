DROP DATABASE IF EXISTS Learning_SQL;

CREATE DATABASE Learning_SQL;

USE Learning_SQL;

CREATE TABLE Employee_Demo_Graphics(
    Employee_ID INT PRIMARY KEY, 
    First_Name VARCHAR(10), 
    Last_Name VARCHAR(10), 
    Age INT, 
    Gender VARCHAR(6)
);

CREATE TABLE Employee_Salary(
    Employee_ID INT,
    Job_Title VARCHAR(15), 
    Salary INT, 
    FOREIGN KEY (Employee_ID) REFERENCES Employee_Demo_Graphics(Employee_ID) ON DELETE CASCADE
);

INSERT INTO Employee_Demo_Graphics VALUES
    (1, 'John', 'Doe', 30, 'Male'),
    (2, 'Jane', 'Smith', 28, 'Female'),
    (3, 'Alice', 'Brown', 35, 'Female'),
    (4, 'Bob', 'Davis', 40, 'Male'),
    (5, 'Charlie', 'Wilson', 32, 'Male'),
    (6, 'Emily', 'Johnson', 27, 'Female'),
    (7, 'David', 'White', 45, 'Male'),
    (8, 'Sophia', 'Garcia', 29, 'Female'),
    (9, 'Michael', 'Martinez', 31, 'Male'),
    (10, 'Olivia', 'Lopez', 26, 'Female');

INSERT INTO Employee_Salary VALUES
    (1, 'Engineer', 75000),
    (2, 'Analyst', 65000),
    (3, 'Manager', 85000),
    (4, 'Engineer', 78000),
    (5, 'Technician', 55000),
    (6, 'Analyst', 68000),
    (7, 'Director', 95000),
    (8, 'Engineer', 72000),
    (9, 'Manager', 83000),
    (10, 'Technician', 57000);

/* Inner Join (It creates a new table by combining rows that have matching values in two or more tables)*/

SELECT * FROM Employee_Demo_Graphics EDG INNER JOIN Employee_Salary ES ON EDG.Employee_ID = ES.Employee_ID;

/* Full Outer Join */

SELECT * FROM Employee_Demo_Graphics EDG FULL OUTER JOIN Employee_Salary ES ON EDG.Employee_ID = ES.Employee_ID;
