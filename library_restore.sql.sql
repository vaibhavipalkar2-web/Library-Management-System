-- ==========================================
-- PHASE 1: DATABASE DESIGN
-- PROJECT: LIBRARY MANAGEMENT SYSTEM
-- ==========================================

-- Create Database
create database LibraryDB;

-- Use Database
USE LibraryDB;
SHOW TABLES;

-- ==========================================
-- TABLE 1: BOOKS
-- ==========================================

CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    ISBN VARCHAR(13) UNIQUE, 
    Category VARCHAR(50) DEFAULT 'Uncategorized',
    Price DECIMAL(10, 2) DEFAULT 0.00,
    Quantity INT NOT NULL DEFAULT 0,
    PublishedYear INT,                    
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

-- ==========================================
-- TABLE 2: STUDENTS
-- ==========================================

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Course VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ==========================================
-- TABLE 3: ISSUEBOOKS
-- RELATIONSHIP USING FOREIGN KEYS
-- ==========================================

CREATE TABLE IssueBooks (
    IssueID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    BookID INT NOT NULL,
    IssueDate DATE NOT NULL,
    ReturnDate DATE,
    Status VARCHAR(20) DEFAULT 'Issued',
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

---- ==========================================
-- PHASE 2: DATA MANAGEMENT
-- INSERT 20 BOOKS
-- ==========================================

INSERT INTO Books (Title, Author, Category, Quantity) VALUES
('Python Basics', 'John Smith', 'Programming', 10),
('SQL Fundamentals', 'David Lee', 'Database', 8),
('Java Complete Guide', 'James Gosling', 'Programming', 5),
('C Programming', 'Dennis Ritchie', 'Programming', 12),
('Data Structures', 'Mark Allen', 'Computer Science', 7),
('Operating Systems', 'Andrew Tanenbaum', 'Computer Science', 6),
('Computer Networks', 'Behrouz Forouzan', 'Networking', 9),
('DBMS Concepts', 'Korth', 'Database', 10),
('Cyber Security', 'William Stallings', 'Security', 5),
('Cloud Computing', 'Rajkumar Buyya', 'Cloud', 8),
('Linux Administration', 'Tom Adelstein', 'System Admin', 6),
('Power BI Essentials', 'Sam Gupta', 'Analytics', 10),
('Web Development', 'Jon Duckett', 'Web', 7),
('HTML & CSS', 'Jon Duckett', 'Web', 15),
('JavaScript Basics', 'Brendan Eich', 'Web', 11),
('Machine Learning', 'Aurélien Géron', 'AI', 4),
('Artificial Intelligence', 'Stuart Russell', 'AI', 3),
('Software Engineering', 'Ian Sommerville', 'Software', 9),
('Computer Graphics', 'Donald Hearn', 'Graphics', 5),
('Project Management', 'Harold Kerzner', 'Management', 8);

-- ==========================================
-- INSERT 25 STUDENTS
-- ==========================================

INSERT INTO Students (StudentName, Course, Email) VALUES
('Rahul Sharma', 'BSc IT', 'rahul@gmail.com'),
('Priya Patil', 'BSc IT', 'priya@gmail.com'),
('Amit Kumar', 'BCA', 'amit@gmail.com'),
('Sneha Joshi', 'BSc CS', 'sneha@gmail.com'),
('Rohit Verma', 'BSc IT', 'rohit@gmail.com'),
('Neha Singh', 'BCA', 'neha@gmail.com'),
('Karan Mehta', 'BSc IT', 'karan@gmail.com'),
('Pooja Desai', 'BSc CS', 'pooja@gmail.com'),
('Vikas Gupta', 'BCA', 'vikas@gmail.com'),
('Anjali Nair', 'BSc IT', 'anjali@gmail.com'),
('Arjun Patil', 'BSc IT', 'arjun@gmail.com'),
('Komal Shah', 'BCA', 'komal@gmail.com'),
('Nitin Rao', 'BSc CS', 'nitin@gmail.com'),
('Meera Kulkarni', 'BSc IT', 'meera@gmail.com'),
('Yash More', 'BCA', 'yash@gmail.com'),
('Riya Jain', 'BSc IT', 'riya@gmail.com'),
('Sahil Khan', 'BSc CS', 'sahil@gmail.com'),
('Tanvi Gupta', 'BCA', 'tanvi@gmail.com'),
('Harsh Patel', 'BSc IT', 'harsh@gmail.com'),
('Aarti Singh', 'BSc CS', 'aarti@gmail.com'),
('Aditya Joshi', 'BCA', 'aditya@gmail.com'),
('Kavya Sharma', 'BSc IT', 'kavya@gmail.com'),
('Manav Shah', 'BSc CS', 'manav@gmail.com'),
('Ishita Verma', 'BCA', 'ishita@gmail.com'),
('Deepak Yadav', 'BSc IT', 'deepak@gmail.com');

--- ==========================================
-- PHASE 2: DATA MANAGEMENT (CONTINUED)
-- ISSUE BOOKS TO STUDENTS
-- ==========================================

INSERT INTO IssueBooks (StudentID, BookID, IssueDate, ReturnDate, Status) VALUES
(1, 1, '2026-06-01', '2026-06-15', 'Issued'),
(2, 2, '2026-06-02', '2026-06-16', 'Issued'),
(3, 3, '2026-06-03', '2026-06-17', 'Issued'),
(4, 4, '2026-06-04', '2026-06-18', 'Issued'),
(5, 5, '2026-06-05', '2026-06-19', 'Issued'),
(6, 6, '2026-06-06', '2026-06-20', 'Issued'),
(7, 7, '2026-06-07', '2026-06-21', 'Issued'),
(8, 8, '2026-06-08', '2026-06-22', 'Issued'),
(9, 9, '2026-06-09', '2026-06-23', 'Issued'),
(10, 10, '2026-06-10', '2026-06-24', 'Issued');


-- ==========================================
-- PHASE 3: REPORT QUERIES
-- ==========================================

-- 1. Display all books
SELECT * FROM Books;

-- 2. Display all students
SELECT * FROM Students;

-- 3. Display all issued books
SELECT * FROM IssueBooks;

-- 4. Show student with issued book details (JOIN query)
SELECT 
    s.StudentName,
    b.Title,
    i.IssueDate,
    i.ReturnDate,
    i.Status
FROM IssueBooks i
JOIN Students s ON i.StudentID = s.StudentID
JOIN Books b ON i.BookID = b.BookID;

-- 5. Count total book titles in the library
SELECT COUNT(*) AS TotalBooks FROM Books;

-- 6. Count total registered students
SELECT COUNT(*) AS TotalStudents FROM Students;

-- 7. Count currently issued books
SELECT COUNT(*) AS IssuedBooks FROM IssueBooks;

-- 8. Count unique books by category
SELECT 
    Category,
    COUNT(*) AS TotalBooks
FROM Books
GROUP BY Category;

-- 9. Search book by title (Robust search using LIKE)
SELECT * FROM Books
WHERE Title LIKE '%Python Basics%';

-- 10. List of available books in stock
SELECT * FROM Books WHERE Quantity > 0;


-- ==========================================
-- PHASE 3: DBA TASKS
-- ==========================================
-- 1. Create a Database User & Grant Privileges

-- Create a new user (Replace 'password123' with a secure password)
CREATE USER 'lib_admin'@'localhost' IDENTIFIED BY 'password123';

-- Grant all privileges on the library database (Assuming your database is named 'library_db')
GRANT ALL PRIVILEGES ON library_db.* TO 'lib_admin'@'localhost';

-- Apply changes immediately
FLUSH PRIVILEGES;

-- 2. Create an Index

-- Create index for faster book title lookups
CREATE INDEX idx_book_title ON Books(Title);

-- Create index for ISBN searches
CREATE INDEX idx_book_isbn ON Books(ISBN);

-- 3. Create a Stored Procedure
DELIMITER //

CREATE PROCEDURE IssueBookToStudent(
    IN p_StudentID INT,
    IN p_BookID INT,
    IN p_IssueDate DATE,
    IN p_ReturnDate DATE
)
BEGIN
    -- Step 1: Insert transaction record into IssueBooks
    INSERT INTO IssueBooks (StudentID, BookID, IssueDate, ReturnDate, Status)
    VALUES (p_StudentID, p_BookID, p_IssueDate, p_ReturnDate, 'Issued');
    
    -- Step 2: Reduce book inventory by 1
    UPDATE Books 
    SET Quantity = Quantity - 1 
    WHERE BookID = p_BookID;
END //

DELIMITER ;

-- How to run it: CALL IssueBookToStudent(11, 1, '2026-06-12', '2026-06-26');

-- 4. Create a Trigger

DELIMITER //

CREATE TRIGGER AfterBookReturn
AFTER UPDATE ON IssueBooks
FOR EACH ROW
BEGIN
    -- Check if the book status was changed from 'Issued' to 'Returned'
    IF OLD.Status = 'Issued' AND NEW.Status = 'Returned' THEN
        UPDATE Books 
        SET Quantity = Quantity + 1 
        WHERE BookID = NEW.BookID;
    END IF;
END //

DELIMITER ;

-- 5. Create a View
CREATE VIEW View_ActiveRentals AS
SELECT 
    i.IssueID,
    s.StudentName,
    s.Course,
    b.Title AS BookTitle,
    b.Author,
    i.IssueDate,
    i.ReturnDate,
    i.Status
FROM IssueBooks i
JOIN Students s ON i.StudentID = s.StudentID
JOIN Books b ON i.BookID = b.BookID
WHERE i.Status = 'Issued';

-- How to run it: 
SELECT * FROM View_ActiveRentals;

-- ==========================================
-- PHASE 4: BACKUP & RECOVERY (GUIDE)
-- ==========================================


