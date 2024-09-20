CREATE DATABASE assignment_01;

USE assignment_01;


CREATE TABLE Students (
    student_ID INT PRIMARY KEY,
    name VARCHAR(20),
    birthday DATE,
    enrollment_date DATE
);


CREATE TABLE Departments (
    department_ID INT PRIMARY KEY,
    department_name VARCHAR(20)
);

CREATE TABLE Professors (
    professor_ID INT PRIMARY KEY,
    professor_name VARCHAR(20),
    department INT,
    hire_date DATE,
    FOREIGN KEY (department) REFERENCES Departments(department_ID)
);

CREATE TABLE Courses (
    courses_ID INT PRIMARY KEY,
    courses_name VARCHAR(20),
    course_professor INT,
    credits INT,
    FOREIGN KEY (course_professor) REFERENCES Professors(professor_ID)
);

CREATE TABLE Enrollments (
    enrollment_ID INT PRIMARY KEY,
    student INT,
    course INT,
    start_date DATE,
    grade VARCHAR(20),
    FOREIGN KEY (student) REFERENCES Students(student_ID),
    FOREIGN KEY (course) REFERENCES Courses(courses_ID)
);

INSERT INTO Students (student_ID, name, birthday, enrollment_date) VALUES
(1, 'John Doe', '2003-01-21', '2024-08-30'),
(2, 'Jane Smith', '2004-03-11', '2024-08-30'),
(3, 'Alice Johnson', '2004-12-18', '2024-08-31'),
(4, 'Bob Brown', '2005-10-11', '2024-08-31'),
(5, 'Charlie Black', '2005-11-21', '2024-09-01'),
(6, 'David White', '2005-09-17', '2024-09-01'),
(7, 'Eva Green', '2006-02-14', '2024-09-02'),
(8, 'Frank Blue', '2004-04-23', '2024-09-02'),
(9, 'Grace Yellow', '2005-07-19', '2024-09-03'),
(10, 'Hank Orange', '2004-06-12', '2024-09-03'),
(11, 'Ivy Pink', '2006-01-22', '2024-09-04'),
(12, 'Jack Purple', '2002-08-11', '2024-09-04'),
(13, 'Karen Gray', '2005-12-03', '2024-09-05'),
(14, 'Leo Silver', '2004-10-29', '2024-09-05'),
(15, 'Mia Gold', '2006-03-15', '2024-09-06'),
(16, 'Nick Copper', '2003-09-09', '2024-09-06'),
(17, 'Olivia Bronze', '2004-05-30', '2024-09-07'),
(18, 'Paul Indigo', '2005-06-25', '2024-09-07'),
(19, 'Quinn Violet', '2006-04-08', '2024-09-08'),
(20, 'Rita Scarlet', '2003-02-18', '2024-09-08'),
(21, 'Sam Magenta', '2004-07-09', '2024-09-09'),
(22, 'Tina Teal', '2005-08-04', '2024-09-09'),
(23, 'Uma Crimson', '2006-11-01', '2024-09-10'),
(24, 'Victor Lime', '2003-03-15', '2024-09-10'),
(25, 'Wendy Jade', '2004-12-28', '2024-09-11');

INSERT INTO Departments (department_ID, department_name) VALUES
(1, 'Computer Science'),
(2, 'Economy'),
(3, 'Natural Science'),
(4, 'Mathematics'),
(5, 'Engineering'),
(6, 'Medicine'),
(7, 'Law'),
(8, 'Psychology'),
(9, 'Philosophy'),
(10, 'Art History');


INSERT INTO Professors (professor_ID, professor_name, department, hire_date) VALUES
(1, 'Dr. Adams', 1, '2020-09-10'),
(2, 'Dr. Brown', 2, '2021-03-28'),
(3, 'Dr. Baker', 2, '2023-06-07'),
(4, 'Dr. Clark', 3, '2024-01-10'),
(5, 'Dr. Davis', 4, '2022-07-19'),
(6, 'Dr. Evans', 4, '2021-11-03'),
(7, 'Dr. Foster', 5, '2023-02-17'),
(8, 'Dr. Green', 6, '2020-12-05'),
(9, 'Dr. Harris', 7, '2022-04-14'),
(10, 'Dr. Jackson', 8, '2024-05-23'),
(11, 'Dr. King', 7, '2021-08-08'),
(12, 'Dr. Lewis', 9, '2023-09-15'),
(13, 'Dr. Mitchell', 9, '2020-11-28'),
(14, 'Dr. Nelson', 1, '2024-03-30'),
(15, 'Dr. Parker', 2, '2022-06-01');



INSERT INTO Courses (courses_ID, courses_name, course_professor, credits) VALUES
(1, 'Databases', 1, 4),
(2, 'Econometrics', 2, 4),
(3, 'Project Management', 10, 3),
(4, 'Analytics', 3, 3),
(5, 'Biology', 4, 2),
(6, 'Machine Learning', 14, 4),
(7, 'Finance', 15, 3),
(8, 'AІ', 1, 4),
(9, 'Marketing', 7, 3),
(10, 'Chemistry', 4, 2),
(11, 'Physics', 6, 2),
(12, 'Human Resources', 10, 3),
(13, 'Statistics', 5, 4),
(14, 'Programming', 14, 4),
(15, 'Philosophy', 13, 2);


INSERT INTO Enrollments (enrollment_ID, student, course, start_date, grade) VALUES
(1, 2, 4, '2024-09-15', 'A'),
(2, 3, 5, '2024-09-20', 'C'),
(3, 5, 3, '2024-09-20', 'B'),
(4, 4, 1, '2024-10-17', 'A'),
(5, 1, 2, '2024-10-17', 'B'),
(6, 3, 6, '2024-10-22', 'A'),
(7, 2, 8, '2024-10-25', 'C'),
(8, 4, 7, '2024-11-01', 'B'),
(9, 1, 11, '2024-11-05', 'A'),
(10, 5, 12, '2024-11-09', 'B'),
(11, 3, 10, '2024-11-12', 'A'),
(12, 2, 14, '2024-11-17', 'C'),
(13, 4, 15, '2024-11-22', 'B'),
(14, 5, 13, '2024-11-25', 'A'),
(15, 1, 12, '2024-11-28', 'B'),
(16, 2, 5, '2024-12-01', 'C'),
(17, 3, 9, '2024-12-05', 'B'),
(18, 4, 1, '2024-12-10', 'A'),
(19, 5, 3, '2024-12-12', 'A'),
(20, 1, 5, '2024-12-15', 'B');



select * from Professors

---- 
SELECT 
    s.name AS student_name, 
    s.birthday, 
    c.courses_name AS course_name, 
    p.professor_name AS professor, 
    d.department_name AS department, 
    e.grade
FROM 
    Students s
JOIN 
    Enrollments e ON s.student_ID = e.student /* зі студентів обираєм тих, що енролмент */
JOIN 
    Courses c ON e.course = c.courses_ID /* зі всіх курсів дод курси що є в енролмент  */
JOIN 
    Professors p ON c.course_professor = p.professor_ID /* дод лише тих проф що ведуть курси */
JOIN 
    Departments d ON p.department = d.department_ID /* лише ті департменти в яких є професори */
WHERE 
    s.birthday >= '2004-01-01'  /* народився пізніше ...*/
GROUP BY 
    s.name, s.birthday, c.courses_name, p.professor_name, d.department_name, e.grade
ORDER BY 
    e.grade asc;
    
--- union ---

SELECT 
    c.course_professor AS professor_ID, 
    p.professor_name 
FROM 
    Courses c
JOIN 
    Professors p ON c.course_professor = p.professor_ID

UNION

SELECT 
    p.professor_ID, 
    p.professor_name 
FROM 
    Professors p
ORDER BY 
    professor_ID;

  
    
 --- CTE ---   
WITH table_info AS (
    SELECT 
        s.name AS student_name, 
        s.birthday, 
        c.courses_name AS course_name, 
        p.professor_name AS professor, 
        d.department_name AS department, 
        e.grade
    FROM 
        Students s
    JOIN 
        Enrollments e ON s.student_ID = e.student 
    JOIN 
        Courses c ON e.course = c.courses_ID
    JOIN 
        Professors p ON c.course_professor = p.professor_ID 
    JOIN 
        Departments d ON p.department = d.department_ID 
    WHERE 
        s.birthday >= '2004-01-01' 
)

SELECT * 
FROM table_info
ORDER BY grade ASC; 

   
   
    
/*перевірка покроково */
SELECT * FROM Students WHERE birthday >= '2003-01-01';
SELECT * FROM Enrollments;
SELECT * FROM Courses;
SELECT * FROM Professors;


--- 



   
   
   
   
   
   
   
