COPY Public.employees FROM 'C:\Users\sathe\Documents\Git\UTAMCB201904DATA3\09-SQL\Homework\Instructions\data\employees.csv' 
DELIMITER ',' CSV HEADER

COPY departments FROM 'C:\Users\sathe\Documents\Git\UTAMCB201904DATA3\09-SQL\Homework\Instructions\data\departments.csv' 
DELIMITER ',' CSV HEADER

COPY titles FROM 'C:\Users\sathe\Documents\Git\UTAMCB201904DATA3\09-SQL\Homework\Instructions\data\titles.csv' 
DELIMITER ',' CSV HEADER

COPY salaries FROM 'C:\Users\sathe\Documents\Git\UTAMCB201904DATA3\09-SQL\Homework\Instructions\data\salaries.csv' 
DELIMITER ',' CSV HEADER

COPY department_employees FROM 'C:\Users\sathe\Documents\Git\UTAMCB201904DATA3\09-SQL\Homework\Instructions\data\dept_emp.csv' 
DELIMITER ',' CSV HEADER

COPY department_managers FROM 'C:\Users\sathe\Documents\Git\UTAMCB201904DATA3\09-SQL\Homework\Instructions\data\dept_manager.csv' 
DELIMITER ',' CSV HEADER
