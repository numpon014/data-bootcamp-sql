CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    date_of_birth TEXT,
    department TEXT
);

INSERT INTO students (id, name, date_of_birth, department) VALUES
(1, 'Alice Wonderland', '2003-07-16', 'Computer Science'),
(2, 'Bob The Builder', '2002-05-04', 'Engineering'),
(3, 'Charlie Chaplin', '2002-12-25', 'Arts'),
(4, 'Diana Prince', '2003-06-01', 'Physics'),
(5, 'Eve Adams', '2004-01-10', 'Mathematics');

-- SELECT * FROM students;
SELECT * FROM students
WHERE date_of_birth < '2003-01-01';