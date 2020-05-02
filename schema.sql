CREATE TABLE departments(
    dept_no             VARCHAR(4)          NOT NULL,
    dept_name           VARCHAR(40)         NOT NULL,
    UNIQUE (dept_name),
    PRIMARY KEY (dept_no)
);

CREATE TABLE employees(
    
    emp_no              INT                 NOT NULL,
    birth_date          DATE                NOT NULL,
    first_name          VARCHAR(16)         NOT NULL,
    last_name           VARCHAR(16)         NOT NULL,
    gender              VARCHAR(1)          NOT NULL,
    hire_date           DATE                NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE dept_managers(
    dept_no            VARCHAR(4)           NOT NULL,
    emp_no             INT                 NOT NULL,
    from_date          DATE                NOT NULL,
    to_date            DATE                NOT NULL, 
    PRIMARY KEY (emp_no) 
    FOREIGN KEY(dept_no) REFERENCES  departments(dept_no)                    
);

CREATE TABLE dept_emp(
    emp_no              INT                 NOT NULL,
    dept_no             VARCHAR(4)          NOT NULL,
    from_date           DATE                NOT NULL,
    to_date             DATE                NOT NULL,
    PRIMARY KEY(emp_no)        
);

CREATE TABLE salaries(
    emp_no              INT                 NOT NULL,
    salary              INT                 NOT NULL,
    from_date           DATE                NOT NULL,
    to_date             DATE                NOT NULL,
    PRIMARY KEY(emp_no)
);

CREATE TABLE titles(
    emp_no              INT                 NOT NULL,
    titles              VARCHAR(24)         NOT NULL,
    from_date           DATE                NOT NULL,
    to_date             DATE                NOT NULL,
    PRIMARY KEY(emp_no)

)