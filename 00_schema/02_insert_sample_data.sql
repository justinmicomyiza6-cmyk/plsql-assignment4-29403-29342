
-- =====================================================
-- PROJECT: Student Registration and Grading Management
-- FILE: 02_insert_sample_data.sql
-- COURSE: INSY 8311
-- ASSIGNMENT IV
-- =====================================================

SET SERVEROUTPUT ON;

-- =====================================================
-- 1. INSERT STUDENTS
-- =====================================================

INSERT INTO students
(first_name, last_name, email, date_of_birth)
VALUES
('Justin', 'Micomyiza', 'justin@auca.ac.rw',
 DATE '2002-05-15');

INSERT INTO students
(first_name, last_name, email, date_of_birth)
VALUES
('Francine', 'Mutesi', 'francine@auca.ac.rw',
 DATE '2003-08-20');

INSERT INTO students
(first_name, last_name, email, date_of_birth)
VALUES
('David', 'Niyonzima', 'david@auca.ac.rw',
 DATE '2001-03-10');

INSERT INTO students
(first_name, last_name, email, date_of_birth)
VALUES
('Grace', 'Uwase', 'grace@auca.ac.rw',
 DATE '2002-11-25');

INSERT INTO students
(first_name, last_name, email, date_of_birth)
VALUES
('Samuel', 'Habimana', 'samuel@auca.ac.rw',
 DATE '2003-01-18');


-- =====================================================
-- 2. INSERT COURSES
-- =====================================================

INSERT INTO courses
(course_code, course_name, credit_hours)
VALUES
('INSY8311', 'Database Development with PL/SQL', 4);

INSERT INTO courses
(course_code, course_name, credit_hours)
VALUES
('INSY8212', 'Programming with C', 3);

INSERT INTO courses
(course_code, course_name, credit_hours)
VALUES
('INSY8312', 'Database Management System', 4);

INSERT INTO courses
(course_code, course_name, credit_hours)
VALUES
('MATH8301', 'Applied Mathematics', 3);

INSERT INTO courses
(course_code, course_name, credit_hours)
VALUES
('INSY8201', 'Information Systems', 3);


-- =====================================================
-- 3. INSERT REGISTRATIONS
-- =====================================================

INSERT INTO registrations
(student_id, course_id, status)
VALUES
(1, 1, 'COMPLETED');

INSERT INTO registrations
(student_id, course_id, status)
VALUES
(1, 2, 'COMPLETED');

INSERT INTO registrations
(student_id, course_id, status)
VALUES
(2, 1, 'COMPLETED');

INSERT INTO registrations
(student_id, course_id, status)
VALUES
(2, 3, 'REGISTERED');

INSERT INTO registrations
(student_id, course_id, status)
VALUES
(3, 2, 'COMPLETED');

INSERT INTO registrations
(student_id, course_id, status)
VALUES
(3, 4, 'COMPLETED');

INSERT INTO registrations
(student_id, course_id, status)
VALUES
(4, 3, 'REGISTERED');

INSERT INTO registrations
(student_id, course_id, status)
VALUES
(5, 5, 'COMPLETED');


-- =====================================================
-- 4. INSERT GRADES
-- =====================================================

INSERT INTO grades
(registration_id, score, letter_grade, remarks)
VALUES
(1, 85, 'A', 'Excellent performance');

INSERT INTO grades
(registration_id, score, letter_grade, remarks)
VALUES
(2, 72, 'B', 'Good performance');

INSERT INTO grades
(registration_id, score, letter_grade, remarks)
VALUES
(3, 91, 'A', 'Outstanding performance');

INSERT INTO grades
(registration_id, score, letter_grade, remarks)
VALUES
(5, 65, 'C', 'Average performance');

INSERT INTO grades
(registration_id, score, letter_grade, remarks)
VALUES
(6, 78, 'B', 'Good performance');

INSERT INTO grades
(registration_id, score, letter_grade, remarks)
VALUES
(8, 88, 'A', 'Very good performance');


-- =====================================================
-- 5. COMMIT TRANSACTION
-- =====================================================

COMMIT;


-- =====================================================
-- 6. DISPLAY INSERTION SUMMARY
-- =====================================================

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Sample data inserted successfully.'
    );

    DBMS_OUTPUT.PUT_LINE('Students: 5');
    DBMS_OUTPUT.PUT_LINE('Courses: 5');
    DBMS_OUTPUT.PUT_LINE('Registrations: 8');
    DBMS_OUTPUT.PUT_LINE('Grades: 6');
END;
/

