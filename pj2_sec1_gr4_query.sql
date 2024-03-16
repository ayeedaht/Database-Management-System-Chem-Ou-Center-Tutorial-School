
-- Section 1 Group 4: Chem Ou
-- Phase 2: M3: Data Query
-- 40 queries - 20 in Basic, and 20 in Advanced

USE chemou;

-- Basic 20 queries

-- 1. List all the Payment detail.
-- The result must contain five columns: "Payment_ID", "Payment_Date","Payment_TIME","Payment_Type","Price"
SELECT Payment_ID,Payment_Date, Payment_TIME, Payment_Type, Price
FROM Payment 
ORDER BY Payment_Date, Payment_TIME ASC;

-- 2. Display List student that age less than 18 and parent phone number.
-- The result must contain two columns: "Student Phone" and "Parent Phone"
SELECT S_Phone AS "Student Phone", S_Parent AS "Parent Phone"
FROM students
WHERE YEAR(NOW())-YEAR(S_BD) < 18;


-- 3. List all branches that are located in the south part.
-- The result must contain three columns: "Southern Branch's Name", "Branch's Province", "Branch's District"
SELECT B_name AS "Southern Branch's Name", B_Province AS "Branch's Province", B_District AS "Branch's District"
FROM branches
WHERE B_Phone LIKE '07%';

-- 4.List all students that live in the northern province by name (first name and last name), 
-- student phone number, and province.
-- The result must comtain three columns: "Student Name", "S_Phone" and "columns"
SELECT CONCAT(S_Fname,' ', S_Lname) AS "Student Name" , S_Phone, S_Province AS 'North Province'
FROM students
WHERE S_Province = 'Chiang Mai' OR S_Province = 'Chiang Rai' OR S_Province = 'Lampang'
ORDER BY S_Province;


-- 5.Choose a junior's only course and is a single course.
-- The result must contain three columns: "Course_ID", "Course_Name" , "Course_Price"
SELECT Course_ID, Course_Name, Course_Price
FROM course
WHERE Course_Name LIKE '%Junior%' AND Course_ID LIKE 'UC__';


-- 6. Shows the type of payment and the maximum amount of each payment type.
-- The result must contain two columns: "Type of Payment", "Max Price"
SELECT Payment_Type AS "Type of Payment", MAX(Price) AS "Max Price"
FROM payment
GROUP BY Payment_Type
ORDER BY MAX(Price) ASC;


-- 7.List all 2022 enrollment by date, and count how many student enrolled per day.
-- The result must contain two columns: "Enrolled Date" and "Student's Enroll"
SELECT DATE(E_ED) AS "Enrolled Date", COUNT(E_SID) AS "Student's Enroll"
FROM enroll
WHERE YEAR(E_ED) = 2022
GROUP BY DATE(E_ED)
ORDER BY DATE(E_ED);


-- 8. List Course ID and book name belonging to Senior high school by sorted by Z-A (descending).
-- Sorted by Z-A (descending)
-- The result contain two columns: "Course ID", "Book Name"
SELECT C_CID AS "Course ID", C_BTitle AS "Book Name"
FROM contain
WHERE C_CID LIKE 'UC1%'
ORDER BY C_BTitle DESC;


-- 9.List all branches that located in the southern part by province and phone number.
-- The result contain two columns: "Southern Branch's Province" and "Branch Phone"
SELECT  B_Province AS "Southern Branch's Province", B_Phone AS "Branch Phone"
FROM branches
WHERE B_Phone LIKE '07%';


-- 10.Display the names of students over 18 years old.
-- The result contain three columns: "Student Name" and "Age"
SELECT CONCAT(S_Fname,' ', S_Lname) AS "Student Name" , YEAR(NOW()) - YEAR(S_BD) AS "Age"
FROM students
WHERE YEAR(NOW()) - YEAR(S_BD) > 18
ORDER BY Age, S_Fname ASC;


-- 11.  List a total number of students who enroll ‘UC14’ course for all 3 academic years.
-- The result must contain two columns: "Course ID" and "Total number of Students"
SELECT E_CID AS "Course ID", COUNT(E_CID) AS 'Total number of Students'
FROM enroll
WHERE E_CID = 'UC14'
GROUP BY E_CID;

-- 12.  List a total number of students who enroll ‘Live’ type for the academic year 2021.
-- The result must contain two columns: "E_Type" and "Total number of Students in 2021"
SELECT E_Type, COUNT(E_Type) AS 'Total number of Students in 2021'
FROM enroll
WHERE E_Type = 'Live' AND E_AY = 2021
GROUP BY E_Type;

-- 13.  List a course whose price is less than or equal to 2000.
-- The result must contain two columns: "Course Name" and "Course Price"
SELECT Course_Name AS 'Course Name', Course_Price AS 'Course Price'
FROM course
WHERE Course_Price <= 2000
ORDER BY Course_Price ASC;


-- 14.  List all students (first name and last name) who have the letter "N" in his/her first name and last name.
-- The result must contain two columns: "Name" and "Surname"
SELECT S_Fname AS 'Name', S_Lname AS 'Surname'
FROM students
WHERE S_Fname LIKE "%N%" OR S_Lname LIKE "%N%"
ORDER BY S_Fname ASC;


-- 15.  List the top 5 oldest students (firstname and last name) with their gender, and their age at 2018.
-- The result must contain three columns: "Full Name", "Gender", and "Age", sorted by the oldest students to the youngest one.
SELECT CONCAT(S_Fname, ' ', S_Lname) AS 'Full Name', S_Gender AS 'Gender', (2020 - YEAR(S_BD)) AS 'Age'
FROM students
ORDER BY age DESC
LIMIT 5;

-- 16.  List all class time which study in room ‘V1’.
-- The result must contain three column: "Class name", "Date and Time", "Course ID"
SELECT Class_Name AS 'Class name', DateNTime AS 'Date and Time', C_course_ID AS 'Course ID'
FROM class
WHERE Class_Name LIKE "%V1%"
ORDER BY C_course_ID;


-- 17.  List all the book details.
-- The result must contain four columns: "Book title", "Content", "Price", and "Publisher", sorted alphabetically by book’s names
SELECT B_Title AS 'Book title', B_Content AS 'Content', B_Price AS 'Price', B_Publisher AS 'Publisher'
FROM book
ORDER BY B_Title ASC;


-- 18.  List all branches where located in Bangkok.
-- The result must contain three columns: "Branch name", "Province", and "Contact", sorted alphabetically by branch’s names
SELECT B_Name AS 'Branch name', B_Province AS 'Province', B_Phone AS 'Contact'
FROM branches
WHERE B_Province = 'bangkok'
ORDER BY B_Province ASC;


-- 19.  List a total number of students who enroll ‘DVD’ type for the academic year 2022.
-- The result must contain two columns: "E_Type" and "Total number of Students in 2022"
SELECT E_Type, COUNT(E_Type) AS 'Total number of Students in 2022'
FROM enroll
WHERE E_Type = 'DVD' AND E_AY = 2021
GROUP BY E_Type;


-- 20.  List a total number of students who enroll of each year (e.g.2020, 2021, and 2022). 
-- The result must have two columns: "Academic year" and "Total number of Students"
SELECT E_AY AS 'Academic year', COUNT(E_AY) AS 'Total number of students'
FROM enroll
GROUP BY E_AY
ORDER BY E_AY ASC;

-- ADVANCED 20 queries

-- 1.  List all students who have enroll course ‘UC18’ and ‘UC19’. 
-- The result must contain four columns: "Student username", "Student name" (student firstname and lastname), Course ID
-- and "Course name", sorted by student’s ID
SELECT a.A_Username AS 'Student username', CONCAT(S_Fname, ' ', S_Lname) AS 'Student name', Course_ID AS 'Course ID', Course_Name AS 'Course name'
FROM accounts a
INNER JOIN students s ON s.S_a_username = a.A_Username
INNER JOIN enroll e ON e.E_SID = s.SID
INNER JOIN course crs ON crs.Course_ID = e.E_CID
WHERE crs.Course_ID LIKE 'UC18' OR crs.Course_ID LIKE 'UC19';


-- 2.  List all student which enroll in DVD Type on academic 2021 year.
-- The result must contain four columns: "Student username", "Name", "Course ID", and "Type", sorted by username’s names alphabetically
SELECT A_Username"Student's usename", CONCAT(S_Fname, ' ', S_Lname) AS "Student's Name",E_CID AS "Course ID", E_Type AS "Type"
FROM accounts a
INNER JOIN students s ON s.S_a_username = a.A_Username
INNER JOIN enroll e ON e.E_SID = s.SID
INNER JOIN course crs ON crs.Course_ID = e.E_CID
WHERE E_Type = 'DVD';


-- 3.  List a total number of students who enroll ‘Entrance’ course for all 3 academic years.
-- The result must contain four columns: "Student ID", "Name", "Course ID" and "Course name"
SELECT SID, CONCAT(S_Fname,' ',S_Lname) AS "Student's name" , course_ID, course_Name
FROM students s
INNER JOIN enroll e ON e.E_SID = s.SID
INNER JOIN course crs ON crs.Course_ID = e.E_CID
WHERE E_AY = 2022 AND course_Name LIKE "%Entrance%";


-- 4. List of students enrolled course in each branch
-- The result must contain three columns: "B_Name", "Branch Name",and "freq of student"
SELECT B_Name AS "Branch Name", COUNT(SID) AS 'freq of student'
FROM branches b
LEFT OUTER JOIN has h ON b.B_Name = h.h_BName
LEFT OUTER JOIN students s ON h.h_SID = s.SID
GROUP BY B_Name;


-- 5. Display course ID , course name, that no student enrolled
-- Sort by course ID
-- The result must contain two columns: "Course_ID" and "Course_Name"
SELECT Course_ID, Course_Name
FROM course c
LEFT OUTER JOIN enroll e ON e.E_CID = c.Course_ID
LEFT OUTER JOIN students s ON s.SID = e.E_SID
GROUP BY c.Course_ID
HAVING COUNT(s.SID) = 0
ORDER BY c.Course_ID ASC;


-- 6. Displays book titles that are the same as course titles.
-- Sorted by book titles alphabetically
-- The result must contain one column: "Book name"
SELECT C_BTitle AS 'Book name'
FROM contain
WHERE C_CID IN (SELECT Course_ID FROM course)
GROUP BY C_BTitle
ORDER BY C_BTitle;


-- 7. Displays the date and time of the classroom where each course is taught that the student has enrolled in.
-- Sorted by Class Name alphabetically
-- The result must contain four columns: "Student username", "Date and Time", "Course ID", and "Course name"
SELECT DISTINCT A_Username AS "Student username", Class_Name, DateNTime AS "Date and Time", C_course_ID AS "Course ID", Course_Name AS "Course Name"
FROM class cl
INNER JOIN course crs ON crs.Course_ID = cl.C_course_ID
INNER JOIN enroll e ON e.E_CID = crs.Course_ID
INNER JOIN payment p ON p.Payment_ID = e.E_PayID
INNER JOIN students s ON e.E_SID = s.SID
INNER JOIN accounts a ON a.A_Username = s.S_a_username
WHERE TIME(E_ED) BETWEEN '09:00:00' AND '10:00:00'
ORDER BY Class_Name ASC;


-- 8. List of students living in Bangkok and enroll at Phayathai branch
-- The result must contain three columns: "student name", "student province",and "Branch enroll"
SELECT CONCAT(S_Fname, ' ' , S_Lname) AS 'student name', S_Province AS 'student province', h_BName AS 'Branch enroll'
FROM students s
INNER JOIN has h ON h.h_SID = s.SID
INNER JOIN branches b ON b.B_Name = h.h_BName
WHERE S_Province = 'Bangkok' AND h_BName = 'Phayathai';


-- 9.List a student ID and student email that has enroll in South branch.
-- The result must contain three columns: "S_ID", "S_Email","B_Name"
SELECT A_Username AS "Student username"  , S_Email AS "Student Email", B_Name AS "South's branch"
FROM branches b
INNER JOIN has h ON b.B_Name = h.h_BName
INNER JOIN students s ON h.h_SID = s.SID
INNER JOIN accounts a ON a.A_Username = s.S_a_username
WHERE B_Phone LIKE '07%';


-- 10. Displays courses ID , and Course Name, and course prices that are less than the 
-- total course price of grade 12.
-- The result must contain three columns: "Course ID", "Course Name", "Course Price"
SELECT Course_ID AS "Course ID" , Course_Name AS "Course Name", Course_Price AS "Course Price"
FROM course
WHERE Course_Price < (SELECT AVG(Course_Price)
FROM course
WHERE Course_Name LIKE '%Grade 12%')
ORDER BY Course_ID ASC;


-- 11. Displays the student name, course code and course name that the student enrolled Course UC18 in 2021
-- but did not enroll Course UC19 in 2022.
-- The result must contain three columns: "Student Name", "Course's enroll", "Course's name"
SELECT CONCAT(S_Fname,' ',S_Lname) AS "Student Name", E_CID AS "Course's enroll", Course_name AS "Course's name"
FROM students s
LEFT OUTER JOIN accounts a ON a.A_Username = s.S_a_username
LEFT OUTER JOIN enroll e ON e.E_SID = s.SID
LEFT OUTER JOIN course crs ON crs.Course_ID = e.E_CID
WHERE E_CID = "UC18" AND E_AY = '2020' AND E_CID NOT IN (SELECT E_CID FROM enroll 
WHERE E_CID = "UC19" AND E_AY = '2021');


-- 12. Displays the books title and course name that matches the same word 'Entrance'.
-- The result must contain one columns: "Name"
SELECT Course_Name AS "Name" FROM course WHERE Course_Name LIKE "%Entrance%"
UNION
SELECT B_Title AS "Name" FROM book WHERE B_Title LIKE "%Entrance%";


-- 13. display the total price of the junior course whose course price is greater than
-- the minimum course price of the entrance course.
-- output = 15200
-- The result must contain one columns: "Sum of course price in Junior"
SELECT SUM(Course_Price) AS "Sum of course price in Junior"
FROM course
WHERE Course_Name LIKE "%Junior%" AND Course_Price > (SELECT MIN(Course_Price)
FROM course
WHERE Course_Name LIKE "%Entrance%");


-- 14.  Display the province of the branch that matches the province of the student that starts with the letter 'c'.
-- The result must contain one columns: "Province"
SELECT B_Province AS "Province"
FROM branches
WHERE B_Province LIKE "C%"
UNION
SELECT S_Province AS "Province"
FROM students
WHERE S_Province LIKE "C%";


-- 15. Display min and max of price in each payment type.
-- Sort by lowest price
-- The result must contain two columns: "Payment_Type", "Price range"
SELECT Payment_Type, CONCAT('[',MIN(Price), ', ', MAX(Price),']') AS "Price range"
FROM payment p
INNER JOIN enroll e ON e.E_PayID = p.Payment_ID
INNER JOIN course crs ON crs.Course_ID = e.E_CID
INNER JOIN students s ON s.SID =  e.E_SID
GROUP BY Payment_Type
ORDER BY MIN(Price) ASC;


-- 16.Show all students first name and last name, branch name that enroll at Phayathai, course name that they enroll in intensive.
-- The result must contain four columns: "First name", "Last name","Branch name","Course name"
SELECT S_Fname AS "First name", S_Lname AS "Last name", B_Name AS "Branch name", Course_Name AS "Course name"
FROM students s
INNER JOIN has h ON h.h_SID = s.SID
INNER JOIN branches b ON b.B_Name = h.h_BName
INNER JOIN enroll e ON e.E_SID = s.SID
INNER JOIN course crs ON crs.Course_ID = e.E_CID
WHERE Course_Name LIKE '%Intensive%' AND B_Name = 'Phayathai'
ORDER BY S_Fname;


-- 17.List a students username who enroll course "Chemistry Grade 12 Volume 2", Course ID, class name, date and time of the class.
-- The result must contain four columns: "Username", "Course Code","Room Number","Date & Time"
SELECT DISTINCT A_Username AS "Username"  , Course_ID AS "Course Code", Class_Name AS "Room Number", DateNTime AS "Date & Time"
FROM accounts a
INNER JOIN students s ON s.S_a_username = a.A_Username
INNER JOIN has h ON h.h_SID = s.SID
INNER JOIN branches b ON b.B_Name = h.h_BName
INNER JOIN enroll e ON e.E_SID = s.SID
INNER JOIN course crs ON crs.Course_ID = e.E_CID
INNER JOIN class c ON c.C_course_ID = crs.Course_ID
WHERE Course_ID LIKE "UC08%"
ORDER BY DateNTime DESC;


-- 18.List all courses id, name and count how many students enrolled them
-- The result must contain three columns: "Course ID", "Course Name",and "freq"
SELECT crs.Course_ID AS "Course ID"  , Course_Name AS "Course Name", COUNT(E_SID) AS "freq"
FROM course crs
LEFT OUTER JOIN enroll e ON e.E_CID = crs.Course_ID
LEFT OUTER JOIN students s ON s.SID = e.E_SID
LEFT OUTER JOIN accounts a ON a.A_Username = s.S_a_username
LEFT OUTER JOIN class c ON c.C_course_ID = crs.Course_ID
GROUP BY crs.Course_ID;


-- 19. Display student emails with payment after noon (12:00 noon) and enrollment dates of students enrolled in each course and branch.
-- Sort by time of payment
-- The result must contain five columns: "Student email", "Course ID", "Payment time", "Enroll date",and "Branch's name"
SELECT S_Email AS "Student email", Course_ID AS "Course ID", Payment_Time AS "Payment time", DATE(E_ED) AS "Enroll date", B_Name AS "Branch's name"
FROM class cl
INNER JOIN course crs ON crs.Course_ID = cl.C_course_ID
INNER JOIN enroll e ON e.E_CID = crs.Course_ID
INNER JOIN payment p ON p.Payment_ID = e.E_PayID
INNER JOIN students s ON e.E_SID = s.SID
INNER JOIN has h ON s.SID = h.H_SID
INNER JOIN branches b ON b.B_Name = h.h_BName
WHERE TIME(Payment_Time) > ("12:00:00")
GROUP BY B_Name
ORDER BY Payment_Time;

-- 20. Displays the total number of students who paid through each payment.
-- The result must contain two columns: "Payment Type" and "Total student in each payment"
SELECT Payment_Type AS "Payment Type", COUNT(E_PayID) AS "Total student in each payment"
FROM payment p
LEFT OUTER JOIN enroll e ON e.E_PayID = p.Payment_ID
INNER JOIN students s ON e.E_SID = s.SID
GROUP BY Payment_Type;
