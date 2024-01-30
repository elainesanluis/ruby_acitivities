-- Create new table

CREATE TABLE students (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    location VARCHAR(100)
);

-- Insert 6 records in students table

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES
    (1, 'Juan', NULL, 'Cruz', 18, 'Manila'),
    (2, 'Anne', NULL, 'Wall', 20, 'Manila'),
    (3, 'Theresa', NULL, 'Joseph', 21, 'Manila'),
    (4, 'Issac', NULL, 'Gray', 19, 'Laguna'),
    (5, 'Zack', NULL, 'Matthews', 22, 'Marikina'),
    (6, 'Finn', NULL, 'Lam', 25, 'Manila');

-- Update the first record

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', age = 25, last_name = 'Howard'
WHERE id = 1;

-- Delete last record in students table

DELETE FROM students
WHERE id = 6;

-- Display the counts of all students

SELECT COUNT(id) FROM students


-- Select all students with location is Manila

SELECT * FROM students WHERE location = 'Manila'


-- Display the average age of all students

SELECT AVG(age) FROM students


-- Display all students by age descending order

SELECT age FROM students ORDER BY age DESC