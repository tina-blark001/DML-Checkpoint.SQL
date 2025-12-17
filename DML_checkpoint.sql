---------------------------------------------------------
-- DATABASE: Employee Participation Information System
-- DML Checkpoint – Inserts, Updates, Deletes
---------------------------------------------------------



INSERT INTO Department 
VALUES
(1, 'IT', 'Alice Johnson'),
(2, 'HR', 'Bob Smith'),
(3, 'Marketing', 'Clara Bennett');


INSERT INTO Employee 
VALUES
(101, 'John Doe', 'Developer', 60000.00, 1),
(102, 'Jane Smith', 'Analyst', 55000.00, 2),
(103, 'Mike Brown', 'Designer', 50000.00, 3),
(104, 'Sarah Johnson', 'Data Scientist', 70000.00, 1),
(105, 'Emma Wilson', 'HR Specialist', 52000.00, 2);




INSERT INTO Project
VALUES
(201, 'Website Redesign', '2024-01-15', '2024-06-30', 1),
(202, 'Employee Onboarding', '2024-03-01', '2024-09-01', 2),
(203, 'Market Research', '2024-02-01', '2024-07-31', 3),
(204, 'IT Infrastructure Setup', '2024-04-01', '2024-12-31', 1);



INSERT INTO Employee_Project 
VALUES
(101, 201, 'Frontend Developer'),
(104, 201, 'Backend Developer'),
(102, 202, 'Trainer'),
(105, 202, 'Coordinator'),
(103, 203, 'Research Lead'),
(101, 204, 'Network Specialist');



--We will UPDATE ROLE of Employee 101:(TASK 2)
UPDATE Employee_Project
SET Role = 'Full Stack Developer'
WHERE Employee_Num_E = 101;



--We will DELETE EMPLOYEE 103 AND remove their project participation. (TASK 3)
---Because of foreign key constraints, we must delete from Employee_Project first.

-- Step 1: Remove project 
DELETE FROM Employee_Project
WHERE Employee_Num_E = 103;


-- Step 2: Delete employee
DELETE FROM Employee
WHERE Num_E = 103;


--We will run SELECT FROM  to verify changes
SELECT * FROM Department;
SELECT * FROM Employee;
SELECT * FROM Project;
SELECT * FROM Employee_Project;







