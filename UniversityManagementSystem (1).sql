CREATE DATABASE UniversityManagementSystem;
USE UniversityManagementSystem;


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    EnrollmentDate DATE
);
INSERT INTO Students (StudentID, FirstName, LastName, Email, EnrollmentDate) VALUES
(1,'Amit','Sharma','amit1@gmail.com','2022-07-01'),
(2,'Riya','Verma','riya2@gmail.com','2022-07-02'),
(3,'Rahul','Gupta','rahul3@gmail.com','2022-07-03'),
(4,'Neha','Singh','neha4@gmail.com','2022-07-04'),
(5,'Ankit','Mehta','ankit5@gmail.com','2022-07-05'),
(6,'Pooja','Patel','pooja6@gmail.com','2022-07-06'),
(7,'Karan','Malik','karan7@gmail.com','2022-07-07'),
(8,'Simran','Kaur','simran8@gmail.com','2022-07-08'),
(9,'Rohit','Yadav','rohit9@gmail.com','2022-07-09'),
(10,'Nisha','Jain','nisha10@gmail.com','2022-07-10'),
(11,'Aman','Khanna','aman11@gmail.com','2022-07-11'),
(12,'Sneha','Agarwal','sneha12@gmail.com','2022-07-12'),
(13,'Vikas','Chopra','vikas13@gmail.com','2022-07-13'),
(14,'Isha','Bansal','isha14@gmail.com','2022-07-14'),
(15,'Deepak','Joshi','deepak15@gmail.com','2022-07-15'),
(16,'Kriti','Saxena','kriti16@gmail.com','2022-07-16'),
(17,'Manish','Rana','manish17@gmail.com','2022-07-17'),
(18,'Payal','Goyal','payal18@gmail.com','2022-07-18'),
(19,'Saurabh','Mishra','saurabh19@gmail.com','2022-07-19'),
(20,'Divya','Arora','divya20@gmail.com','2022-07-20'),
(21,'Arjun','Kapoor','arjun21@gmail.com','2022-07-21'),
(22,'Kajal','Shah','kajal22@gmail.com','2022-07-22'),
(23,'Nitin','Pandey','nitin23@gmail.com','2022-07-23'),
(24,'Rashmi','Tiwari','rashmi24@gmail.com','2022-07-24'),
(25,'Harsh','Bhatia','harsh25@gmail.com','2022-07-25'),
(26,'Anjali','Madaan','anjali26@gmail.com','2022-07-26'),
(27,'Yash','Sethi','yash27@gmail.com','2022-07-27'),
(28,'Monika','Kapoor','monika28@gmail.com','2022-07-28'),
(29,'Aditya','Verma','aditya29@gmail.com','2022-07-29'),
(30,'Pallavi','Rawat','pallavi30@gmail.com','2022-07-30'),
(31,'Mohit','Aggarwal','mohit31@gmail.com','2022-08-01'),
(32,'Renu','Singhal','renu32@gmail.com','2022-08-02'),
(33,'Abhishek','Sinha','abhishek33@gmail.com','2022-08-03'),
(34,'Shreya','Kulkarni','shreya34@gmail.com','2022-08-04'),
(35,'Prateek','Mathur','prateek35@gmail.com','2022-08-05'),
(36,'Tanvi','Deshmukh','tanvi36@gmail.com','2022-08-06'),
(37,'Gaurav','Bajaj','gaurav37@gmail.com','2022-08-07'),
(38,'Meenal','Chawla','meenal38@gmail.com','2022-08-08'),
(39,'Siddharth','Nair','siddharth39@gmail.com','2022-08-09'),
(40,'Kiran','Iyer','kiran40@gmail.com','2022-08-10'),
(41,'Rajat','Mittal','rajat41@gmail.com','2022-08-11'),
(42,'Aishwarya','Rao','aishwarya42@gmail.com','2022-08-12'),
(43,'Vivek','Das','vivek43@gmail.com','2022-08-13'),
(44,'Pinky','Soni','pinky44@gmail.com','2022-08-14'),
(45,'Naveen','Purohit','naveen45@gmail.com','2022-08-15'),
(46,'Komal','Jha','komal46@gmail.com','2022-08-16'),
(47,'Sunil','Kashyap','sunil47@gmail.com','2022-08-17'),
(48,'Rekha','Reddy','rekha48@gmail.com','2022-08-18'),
(49,'Ajay','Thakur','ajay49@gmail.com','2022-08-19'),
(50,'Bhavna','Tripathi','bhavna50@gmail.com','2022-08-20');


CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT CHECK (Credits > 0)
);

INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(1,'DBMS',4),(2,'Operating Systems',4),(3,'Computer Networks',3),
(4,'Data Structures',4),(5,'Java Programming',3),
(6,'Python Programming',3),(7,'Web Development',3),
(8,'Software Engineering',4),(9,'AI Basics',3),(10,'Machine Learning',4),
(11,'Cloud Computing',3),(12,'Cyber Security',3),
(13,'C Programming',4),(14,'C++ Programming',4),
(15,'Discrete Mathematics',3),(16,'Linear Algebra',3),
(17,'Statistics',3),(18,'Big Data',4),
(19,'Data Mining',4),(20,'IoT',3),
(21,'Mobile Computing',3),(22,'Digital Logic',4),
(23,'Compiler Design',4),(24,'Microprocessors',4),
(25,'Blockchain',3),(26,'DevOps',3),
(27,'UI UX Design',2),(28,'Game Development',3),
(29,'AR VR',3),(30,'Ethical Hacking',3),
(31,'Deep Learning',4),(32,'NLP',3),
(33,'Image Processing',4),(34,'Robotics',3),
(35,'Distributed Systems',4),(36,'Advanced DBMS',4),
(37,'Numerical Methods',3),(38,'Graph Theory',3),
(39,'Theory of Computation',4),(40,'Quantum Computing',3),
(41,'Bioinformatics',3),(42,'E-Commerce',3),
(43,'Digital Marketing',2),(44,'MIS',3),
(45,'ERP Systems',3),(46,'Financial Computing',3),
(47,'Business Analytics',3),(48,'Econometrics',3),
(49,'Supply Chain',3),(50,'Project Management',3);


CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY,
    ProfessorName VARCHAR(100) NOT NULL,
    Department VARCHAR(100)
);

INSERT INTO Professors (ProfessorID, ProfessorName, Department) VALUES
(1,'Dr. A Kumar','Computer Science'),
(2,'Dr. R Mehta','IT'),
(3,'Dr. S Gupta','Electronics'),
(4,'Dr. N Verma','Mechanical'),
(5,'Dr. P Singh','Civil'),
(6,'Dr. M Joshi','Electrical'),
(7,'Dr. K Malhotra','Mathematics'),
(8,'Dr. L Khanna','Physics'),
(9,'Dr. J Arora','Chemistry'),
(10,'Dr. D Jain','Management'),
(11,'Dr. A Saxena','Economics'),
(12,'Dr. R Bansal','Statistics'),
(13,'Dr. S Kapoor','Biotech'),
(14,'Dr. V Mishra','Architecture'),
(15,'Dr. H Agarwal','Design'),
(16,'Dr. C Tiwari','Law'),
(17,'Dr. R Chauhan','Psychology'),
(18,'Dr. A Sinha','Sociology'),
(19,'Dr. P Roy','Philosophy'),
(20,'Dr. M Dutta','History'),
(21,'Dr. K Iyer','Political Science'),
(22,'Dr. S Rao','Geography'),
(23,'Dr. V Nair','Environment'),
(24,'Dr. A Ghosh','Data Science'),
(25,'Dr. R Patel','AI'),
(26,'Dr. N Shah','Robotics'),
(27,'Dr. P Mallick','Cyber Security'),
(28,'Dr. A Kulkarni','Cloud'),
(29,'Dr. S Desai','Blockchain'),
(30,'Dr. M Kuldeep','IoT'),
(31,'Dr. D Agarwal','Finance'),
(32,'Dr. R Kedia','Accounting'),
(33,'Dr. V Sood','Marketing'),
(34,'Dr. N Chandra','HR'),
(35,'Dr. A Grover','Operations'),
(36,'Dr. P Batra','Logistics'),
(37,'Dr. S Oberoi','Entrepreneurship'),
(38,'Dr. T Menon','IB'),
(39,'Dr. A Pillai','Healthcare'),
(40,'Dr. R Malhotra','Pharmacy'),
(41,'Dr. K Singh','Nursing'),
(42,'Dr. D Reddy','Public Health'),
(43,'Dr. M Banerjee','Education'),
(44,'Dr. S Sen','Linguistics'),
(45,'Dr. H Verma','English'),
(46,'Dr. R Mishra','Hindi'),
(47,'Dr. L Dubois','French'),
(48,'Dr. K Muller','German'),
(49,'Dr. Y Tanaka','Japanese'),
(50,'Dr. W Zhang','Chinese');


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    Building VARCHAR(100)
);

INSERT INTO Departments (DepartmentID, DepartmentName, Building) VALUES
(1,'Computer Science','Block A'),
(2,'Information Technology','Block B'),
(3,'Electronics','Block C'),
(4,'Mechanical','Block D'),
(5,'Civil','Block E'),
(6,'Electrical','Block F'),
(7,'Mathematics','Block G'),
(8,'Physics','Block H'),
(9,'Chemistry','Block I'),
(10,'Management','Block J'),
(11,'Economics','Block K'),
(12,'Statistics','Block L'),
(13,'Biotechnology','Block M'),
(14,'Architecture','Block N'),
(15,'Design','Block O'),
(16,'Law','Block P'),
(17,'Psychology','Block Q'),
(18,'Sociology','Block R'),
(19,'Philosophy','Block S'),
(20,'History','Block T'),
(21,'Political Science','Block U'),
(22,'Geography','Block V'),
(23,'Environmental Science','Block W'),
(24,'Data Science','Block X'),
(25,'AI Research','Block Y'),
(26,'Robotics','Block Z'),
(27,'Cyber Security','Block AA'),
(28,'Cloud Computing','Block AB'),
(29,'Blockchain','Block AC'),
(30,'IoT','Block AD'),
(31,'Finance','Block AE'),
(32,'Accounting','Block AF'),
(33,'Marketing','Block AG'),
(34,'HR','Block AH'),
(35,'Operations','Block AI'),
(36,'Logistics','Block AJ'),
(37,'Entrepreneurship','Block AK'),
(38,'International Business','Block AL'),
(39,'Healthcare','Block AM'),
(40,'Pharmacy','Block AN'),
(41,'Nursing','Block AO'),
(42,'Public Health','Block AP'),
(43,'Education','Block AQ'),
(44,'Linguistics','Block AR'),
(45,'English','Block AS'),
(46,'Hindi','Block AT'),
(47,'French','Block AU'),
(48,'German','Block AV'),
(49,'Japanese','Block AW'),
(50,'Chinese','Block AX');


CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate, Grade)
SELECT 
    ROW_NUMBER() OVER () AS EnrollmentID,
    s.StudentID,
    c.CourseID,
    DATE_ADD('2022-08-01', INTERVAL FLOOR(RAND()*30) DAY),
    ELT(FLOOR(1 + RAND()*5),'A','B','C','A+','B+')
FROM Students s
JOIN Courses c
WHERE c.CourseID <= FLOOR(1 + RAND()*5)
ORDER BY RAND();



CREATE TABLE ProfessorDepartments (
    ProfessorID INT,
    DepartmentID INT,
    PRIMARY KEY (ProfessorID, DepartmentID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO ProfessorDepartments (ProfessorID, DepartmentID) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(29,29),
(30,30),
(31,31),
(32,32),
(33,33),
(34,34),
(35,35),
(36,36),
(37,37),
(38,38),
(39,39),
(40,40),
(41,41),
(42,42),
(43,43),
(44,44),
(45,45),
(46,46),
(47,47),
(48,48),
(49,49),
(50,50);

select * from ProfessorDepartments;

-- 1.	Identify students enrolled in the highest number of courses. What does this suggest about their academic engagement?

select * from courses;
select * from departments;
select * from enrollments;
select * from professors;
select * from students;
select * from ProfessorDepartments;


select * from enrollments;

-- 1.	Identify students enrolled in the highest number of courses. What does this suggest about their academic engagement?


SELECT StudentID,concat(FirstName,' ',LastName) StudentName, COUNT(CourseID) AS TotalCourses 
FROM Enrollments join students using(studentid)
GROUP BY StudentID
ORDER BY TotalCourses DESC;

-- 2.	Find students with consistently high grades (A or B). Can these students be considered for merit-based scholarships?
select * from students;
select * from enrollments;

select StudentID,concat(FirstName,' ',LastName) StudentName,grade 
from Enrollments join students using(studentid)
where grade in ('A+','A','B+');



-- 3.	Determine the average grade per student across all courses. How can this information guide academic counseling?
select * from students;
select * from enrollments;
select * from courses;

SELECT 
    e.StudentID,
    s.FirstName,
    s.LastName,
    ROUND(AVG(
        CASE e.Grade
            WHEN 'A+' THEN 10
            WHEN 'A'  THEN 9
            WHEN 'B+' THEN 8
            WHEN 'B'  THEN 7
            WHEN 'C'  THEN 6
        END
    ),2) AS AverageGrade
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
GROUP BY e.StudentID, s.FirstName, s.LastName;


-- Course & Enrollment Analysis
-- 1.	Identify the top 5 most enrolled courses. What makes these courses popular among students?
select * from enrollments;
select * from courses;

select c.courseid,c.coursename,count(e.studentid)from enrollments e join courses c on e.courseid = c.courseid
group by c.coursename,c.courseid
order by count(studentid) desc;


-- 2.	Find courses with low enrollment numbers. Should these courses be promoted or discontinued?
select * from enrollments;
select * from courses;

select c.courseid,c.coursename,count(e.studentid)from enrollments e join courses c on e.courseid = c.courseid
group by c.coursename,c.courseid
order by count(studentid);

-- 3.	Calculate the Average workload by Total Credits  as per Student. Is the workload balanced?
select * from enrollments;
select * from courses;

SELECT avg(TotalCredits) AS AverageWorkload
FROM (
    SELECT s.StudentID,s.FirstName,
       s.LastName,count(c.coursename),sum(c.Credits) AS TotalCredits
    FROM Students s
    JOIN Enrollments e ON s.StudentID = e.StudentID
    JOIN Courses c ON e.CourseID = c.CourseID
    GROUP BY s.StudentID
) AS StudentWorkload;

-- workload balanced

-- Academic Performance & Trends
-- 1.	Calculate the average grade distribution across all departments. Which department shows the best academic performance?
select * from courses;
select * from departments;
select * from enrollments;
select * from professors;
select * from students;
select * from ProfessorDepartments;

SELECT 
    d.DepartmentName,
    ROUND(AVG(
        CASE e.Grade
            WHEN 'A+' THEN 10
            WHEN 'A'  THEN 9
            WHEN 'B+' THEN 8
            WHEN 'B'  THEN 7
            WHEN 'C'  THEN 6
        END
    ),2) AS AverageGrade
FROM Enrollments e
JOIN Courses c ON e.CourseID = c.CourseID
JOIN Departments d ON c.CourseID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY AverageGrade DESC;

-- 2.	Identify the most difficult courses (lowest average grades). Should the curriculum or teaching methods be reviewed?
SELECT 
    d.DepartmentName,
    ROUND(AVG(
        CASE e.Grade
            WHEN 'A+' THEN 10
            WHEN 'A'  THEN 9
            WHEN 'B+' THEN 8
            WHEN 'B'  THEN 7
            WHEN 'C'  THEN 6
        END
    ),2) AS AverageGrade
FROM Enrollments e
JOIN Courses c ON e.CourseID = c.CourseID
JOIN Departments d ON c.CourseID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY AverageGrade;


-- 3.	Analyze grade trends over time (e.g., improvement or decline per semester). What could be influencing these changes?

SELECT 
    YEAR(e.EnrollmentDate) AS Year,
    CASE 
        WHEN MONTH(e.EnrollmentDate) BETWEEN 1 AND 6 THEN 'Semester 1'
        ELSE 'Semester 2'
    END AS Semester,
    ROUND(AVG(
        CASE e.Grade
            WHEN 'A+' THEN 10
            WHEN 'A'  THEN 9
            WHEN 'B+' THEN 8
            WHEN 'B'  THEN 7
            WHEN 'C'  THEN 6
        END
    ),2) AS AverageGrade
FROM Enrollments e
GROUP BY Year, Semester
ORDER BY Year, Semester;


-- Comparative & Predictive Analysis
-- 1.	Compare the enrollment growth of different departments over the last three years. Which department is expanding fastest?

-- 2.	Predict which students are at risk of failing based on their grades and number of courses taken.
SELECT 
    e.StudentID,
    CONCAT(s.FirstName,' ',s.LastName) AS StudentName,
    COUNT(e.CourseID) AS TotalCourses,
    ROUND(AVG(
        CASE e.Grade
            WHEN 'A+' THEN 10
            WHEN 'A'  THEN 9
            WHEN 'B+' THEN 8
            WHEN 'B'  THEN 7
            WHEN 'C'  THEN 6
        END
    ),2) AS AvgGrade
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
GROUP BY e.StudentID, StudentName
HAVING AvgGrade <= 6.5 OR TotalCourses >= 5;

-- 3.	Analyze whether students enrolled in higher-credit courses tend to achieve better grades.
select * from courses;
select * from enrollments;
SELECT 
    c.Credits,
    ROUND(AVG(
        CASE e.Grade
            WHEN 'A+' THEN 10
            WHEN 'A'  THEN 9
            WHEN 'B+' THEN 8
            WHEN 'B'  THEN 7
            WHEN 'C'  THEN 6
        END
    ),2) AS AverageGrade
FROM Enrollments e
JOIN Courses c ON e.CourseID = c.CourseID
GROUP BY c.Credits
ORDER BY c.Credits;
