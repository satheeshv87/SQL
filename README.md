# HR Database System

This project designs a database management system for HR Operations in PostegreSQL.

## Entities 

- Employees
- Departments
- Titles
- Salaries

## Entity Relations

- Department_Employees
	- Employees and the department they belong to 
- Department_Managers
	- Employees and their managers

## ERD
![ERDDataModel](https://user-images.githubusercontent.com/22437603/61572336-e44c3b80-aa69-11e9-8a21-b840b9ae44db.PNG)

## Data
- Randam test data between 1980-2000 is loaded from csv files into tables

## Analysis
- Data from postgreSQL in loaded into a Pandas dataframe and then plotted in a bar graph
- It is evident from the graph that on an average, staff get higher salary than managers or engineers, which confirms that the test data is not right

![SalaryAnalysis](https://user-images.githubusercontent.com/22437603/61572341-f4641b00-aa69-11e9-8f4d-e0310a213d72.png)
