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
SET first_name = 'Ivan', middle_name = 'Ingram', age = 25, last_name = 'Howard', location = 'Bulacan'
WHERE id = 1;

-- Delete last record in students table

DELETE FROM students
WHERE id = 6;

-- Display the counts of all students

SELECT COUNT(id) FROM students;

-- Select all students with location is Manila

SELECT * FROM students WHERE location = 'Manila';


-- Display the average age of all students

SELECT AVG(age) FROM students;


-- Display all students by age descending order

SELECT age FROM students ORDER BY age DESC;


-- Jan. 31, 2024 
-- JOINS activity
-- Create new table research_papers with the following columns:
-- id - primary key
-- student_id - foreign key
-- grade - grades can be "A", "B", "C", "D", "E", "F", or NULL
CREATE TABLE research_papers (
    id INT PRIMARY KEY,
    student_id INT NOT NULL,
    grade VARCHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F', NULL)),
    FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert 10 records to the new table
-- 2 students should have more than 1 research paper
-- 2 students should have 1 ungraded (NULL) research paper
INSERT INTO research_papers (student_id, grade) 
VALUES
(1, 'A'), 
(1, 'B'), 
(2, 'B'), 
(3, 'B'), 
(4, NULL),
(5, 'B'), 
(6, 'A'), 
(7, NULL), 
(8, 'B'), 
(8, 'B');

-- Query all students with multiple research papers 
-- (select first_name, last_name, and number_of_research_papers only)
SELECT s.first_name, s.last_name, COUNT(rp.id) AS number_of_research_papers
FROM students s
JOIN research_papers rp ON s.id = rp.student_id
GROUP BY s.id, s.first_name, s.last_name
HAVING COUNT(rp.id) > 1;

-- Query all students with ungraded research papers 
-- (select first_name, last_name, research_paper_id, and grade only)
SELECT s.first_name, s.last_name, rp.id AS research_paper_id, rp.grade
FROM students s
JOIN research_papers rp ON s.id = rp.student_id
WHERE rp.grade IS NULL;
