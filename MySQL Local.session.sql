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

CREATE TABLE Parks_Departments(
	Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(20)
);

CREATE TABLE Employee_Salary(
    Employee_ID INT,
    Job_Title VARCHAR(15), 
    Salary INT, 
    Department_ID INT,
    FOREIGN KEY (Employee_ID) REFERENCES Employee_Demo_Graphics(Employee_ID) ON DELETE CASCADE,
    FOREIGN KEY (Department_ID) REFERENCES Parks_Departments(Department_ID) ON DELETE CASCADE
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

INSERT INTO Parks_Departments VALUES 
	(1, 'Maintenance'),
	(2, 'Recreation'),
	(3, 'Events'),
	(4, 'Conservation'),
	(5, 'Administration'),
	(6, 'Public Relations');

INSERT INTO Employee_Salary VALUES
    (1, 'Engineer', 75000, 1),
    (2, 'Analyst', 65000, 6),
    (3, 'Manager', 85000, 3),
    (4, 'Engineer', 78000, 5),
    (5, 'Technician', 55000, 1),
    (6, 'Analyst', 68000, 6),
    (7, 'Director', 95000, 3),
    (8, 'Engineer', 72000, 2),
    (9, 'Manager', 83000, 3),
    (10, 'Technician', 57000, 1);

/* Inner Join/ Join(It creates a new table by combining rows that have matching values in two or more tables)*/

SELECT * FROM Employee_Demo_Graphics EDG JOIN Employee_Salary ES ON EDG.Employee_ID = ES.Employee_ID;
SELECT EDG.Employee_ID, Age, ES.Job_Title FROM Employee_Demo_Graphics EDG JOIN Employee_Salary ES ON EDG.Employee_ID = ES.Employee_ID;

/* Left Join(The LEFT JOIN keyword returns all records from the left table, even if there are no matches in the right table) */

SELECT * FROM Employee_Demo_Graphics EDG LEFT JOIN Employee_Salary ES ON EDG.Employee_ID = ES.Employee_ID;

/* Right Join(The Right JOIN keyword returns all records from the right table, even if there are no matches in the left table) */

SELECT * FROM Employee_Demo_Graphics EDG RIGHT JOIN Employee_Salary ES ON EDG.Employee_ID = ES.Employee_ID;

/* Self Join(It is a regular join that is used to join a table with itself) */

SELECT * FROM  Employee_Salary ES1 JOIN Employee_Salary ES2 ON ES1.Employee_ID + 1 = ES2.Employee_ID;

/* Multiple Join */

SELECT * FROM Employee_Demo_Graphics EDG JOIN Employee_Salary ES ON EDG.Employee_ID = ES.Employee_ID JOIN Parks_Departments PD ON ES.Department_ID = PD.Department_ID;

/* UNION(Removes Duplicate (UNION ALL is used if we want duplicate data)) */

SELECT Age, Gender FROM Employee_Demo_Graphics UNION SELECT Salary, Job_Title FROM Employee_Salary;