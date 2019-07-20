CREATE TABLE Employees 
(
    Emp_No 		int NOT NULL,
    Birth_Date 	date NOT NULL,
    First_Name 	varchar(500) NOT NULL,
    Last_Name 	varchar(500) NOT NULL,
    Gender 		varchar(1) NOT NULL,
    Hire_Date 	date NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (Emp_No)
)

CREATE TABLE Departments 
(
    Dept_No 	varchar(50) NOT NULL,
    Dept_Name 	varchar(100) NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (Dept_No)
);

CREATE TABLE Department_Employees 
(
    Emp_No 		int NOT NULL,
    Dept_No 	varchar(50) NOT NULL,
    From_Date 	date NOT NULL,
    To_Date 	date NOT NULL
);

CREATE TABLE Department_Managers 
(
    Dept_No 	varchar(50) NOT NULL,
    Emp_No 		int NOT NULL,
    From_Date 	date NOT NULL,
    To_Date 	date NOT NULL
);

CREATE TABLE Salaries 
(
    Emp_No 		int   NOT NULL,
    Salary 		float NOT NULL,
    From_Date 	date  NOT NULL,
    To_Date 	date  NOT NULL
);

CREATE TABLE Titles 
(
    Emp_No 		int NOT NULL,
    Titles 		varchar(500) NOT NULL,
    From_Date 	date NOT NULL,
    To_Date 	date NOT NULL
);

ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Department_Managers ADD CONSTRAINT fk_Department_Managers_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Department_Managers ADD CONSTRAINT fk_Department_Managers_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);