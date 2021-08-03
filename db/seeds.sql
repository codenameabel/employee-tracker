INSERT INTO department (name) 
VALUES 
        ("IT"),("Marketing"),("HR");

INSERT INTO role (title, salary, department_id)
VALUES 
        ("Engineer", 180000, 1),
        ("Collaborator", 45000, 2),
        ("Recruiter", 60000,3);


INSERT INTO employees (first_name, last_name, role_id)
VALUES
        ('John', 'Doe', 1),
        ('Mike', 'Chan', 2),
        ('Ashley', 'Rodriguez', 3); 