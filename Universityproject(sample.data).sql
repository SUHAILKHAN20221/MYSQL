-- use university_project---------------------------------------------------------------------------;
CREATE TABLE student (
    studentID INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    enrollmentdate DATE
);

-- Create the instructors table
CREATE TABLE instructors (
    instructorID INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    hiredate DATE
);

-- Create the course table
CREATE TABLE course (
    courseID INT PRIMARY KEY,
    coursename VARCHAR(50),
    credits INT
);

-- Create the enrollment table(linking student and course)
CREATE TABLE enrollment (
    enrollmentID INT PRIMARY KEY,
    studentID INT,
    courseID INT,
    grade CHAR(1),
    FOREIGN KEY (studentID)
        REFERENCES student (studentid),
    FOREIGN KEY (courseID)
        REFERENCES course (courseID)
);

-- create the teaching assignments table(linking instructors and courses)
CREATE TABLE techingassignments (
    assignmentID INT PRIMARY KEY,
    instructorID INT,
    courseID INT,
    semester VARCHAR(20),
    FOREIGN KEY (instructorID)
        REFERENCES instructors (instructorID),
    FOREIGN KEY (courseID)
        REFERENCES course (courseID)
);

-- INSERT SAMPLE DATA--------------------------------------------------------------------------------------;
-- insert data into the student table
Insert into student
(studentID,firstname,lastname,enrollmentdate)
values
(1,'john','doe','2021-09-01'),
(2,'jane','smith','2022-01-15'),
(3,'mike','johnson','2021-09-01');

-- insert data into the instructors table
Insert into instructors
(InstructorID,firstname,lastname,hiredate)
values
(1,'alice','brown','2019-08-15'),
(2,'bob','davis','2020-01-10');

-- insert data into the cource table
Insert into  course
(courseID,coursename,credits)
values
(1,'database_systems',3),
(2,'Algorithms',4),
(3,'oprating systems',3);

-- insert data innto enrollnments table.
insert into enrollment(
enrollmentID,studentID,courseID,grade)
values
(1,1,1,'A'),
(2,2,2,'B'),
(3,3,3,'A'),
(4,2,1,'B'),
(5,2,1,'C');

-- insert data into the teaching assignments table.
insert into  techingassignments
(assignmentID,instructorID,courseID,semester)
values
(1,1,1,'fall 2023'),
(2,2,2,'spring 2024'),
(3,1,3,'fall 2023');
----------------------------------------------------------------------------------------------
