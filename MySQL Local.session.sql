DROP DATABASE IF EXISTS Learning_SQL;

CREATE DATABASE Learning_SQL;

CREATE TABLE EmployeeDemoGraphics(
    Employee_ID INT PRIMARY KEY, 
    First_Name VARCHAR(10), 
    Last_Name VARCHAR(10), 
    Age INT, 
    Gender VARCHAR(6)
);

CREATE TABLE EmployeeSalary(
    Employee_ID INT,
    Job_Title VARCHAR(15), 
    Salary INT, 
    FOREIGN KEY (Employee_ID) REFERENCES EmployeeDemoGraphics(Employee_ID) ON DELETE CASCADE
);