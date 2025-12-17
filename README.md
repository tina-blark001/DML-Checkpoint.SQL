### Employee Participation Information System
This repository contains the full implementation of an SQL-based information system designed to manage employees, departments, projects, and their participation roles.
The system was modeled using an ERD (Entity Relationship Diagram) and implemented using SQL (DDL + DML).

##  Overview
This project manages how employees participate in various company projects. Each employee belongs to a department, and each project is assigned to a specific department. Additionally, the system tracks the role each employee plays in each project.

# The repository includes:

* ERD Diagram – illustrating the structure and relationships between entities

* SQL Script – creating all tables, inserting records, updating data, and performing delete operations

* DML Checkpoint Queries – showing how to manipulate records effectively in SQL

##  Database Structure
1. Department
Stores information about company departments.
Attributes:
Num_S (Primary Key)
Label
Manager_Name

2. Employee
Contains data about employees.
Attributes:
Num_E (Primary Key)
Name
Position
Salary
Department_Num_S (Foreign Key → Department.Num_S)

3. Project
Tracks all company projects.
Attributes:
Num_P (Primary Key)
Title
Start_Date
End_Date
Department_Num_S (Foreign Key → Department.Num_S)

4. Employee_Project
A junction table to track participation of employees in projects.
Attributes:
Employee_Num_E (Foreign Key → Employee.Num_E)
Project_Num_P (Foreign Key → Project.Num_P)
Role
Primary Key: (Employee_Num_E, Project_Num_P)

##  Data Manipulation (DML)
The SQL script includes:
* Insertions
Populates all tables with sample data (employees, departments, projects, roles).
* Updates
Updates the role of employee 101 to Full Stack Developer.
* Deletions
Deletes employee 103 and removes their project assignments safely.

## How to Run
*Open SQL Server / MySQL / PostgreSQL (depending on your DBMS).
*Run the table creation SQL script.
*Execute the DML script (insert, update, delete).
*Use the provided SELECT statements to verify results.


##  Files Included
*ERD.png – Entity Relationship Diagram
*database_structure.sql – DDL script (table creation)
*dml_checkpoint.sql – Inserts, Updates, Deletes
* screenshots

## Purpose
This project demonstrates the complete process of:
*designing an ERD
*converting it to a relational model
*creating SQL tables
*performing DML operations
*understanding relational integrity
