-- Deletes if database exists 
DROP DATABASE IF EXISTS employee_tracker;

-- Creats the database 
CREATE database employee_tracker;

-- Creates department table 
CREATE TABLE department( 

    id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

-- Create role table 
CREATE TABLE role (

    id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL, 
    FOREIGN KEY (department_id) REFERENCES department (id)
);

-- Creates employee table  
CREATE TABLE employees (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER NOT NULL,
    FOREIGN KEY (role_id) REFERENCES role (id),
    manager_id INTEGER NULL, 
    FOREIGN KEY (manager_id) REFERENCES employees (id)
);

