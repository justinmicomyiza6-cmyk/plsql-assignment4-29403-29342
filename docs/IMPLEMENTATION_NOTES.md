# Implementation Notes
## Student Registration and Grading Management System

### 1. Project Overview
This project implements a Student Registration and Grading Management
System using Oracle PL/SQL. It manages students, courses, registrations,
and grades.

### 2. Database Design
The system uses four relational tables:

- STUDENTS: Stores student information.
- COURSES: Stores course information.
- REGISTRATIONS: Connects students to courses.
- GRADES: Stores scores and grades for registrations.

Primary keys, foreign keys, UNIQUE constraints, and CHECK constraints
maintain data integrity.

### 3. Records
The project demonstrates:

- User-defined PL/SQL records.
- Table-based records using STUDENTS%ROWTYPE.

Records make it easier to store and process related information.

### 4. Collections
Associative arrays are used to store and process multiple values.
The project also integrates collections into procedures for
processing student and registration information.

### 5. Cursor Management
Implicit cursors are demonstrated with INSERT, UPDATE, and DELETE
statements using:

- SQL%ROWCOUNT
- SQL%FOUND
- SQL%NOTFOUND

Explicit cursors demonstrate OPEN, FETCH, and CLOSE operations
for retrieving student records.

### 6. Bulk Processing
The project uses:

- BULK COLLECT to retrieve multiple records.
- FORALL to execute DML operations in batches.
- SAVE EXCEPTIONS to allow bulk processing to continue when
  individual DML operations fail.
- SQL%BULK_EXCEPTIONS to inspect bulk DML errors.

Bulk processing reduces repeated communication between the
PL/SQL engine and SQL engine.

### 7. Stored Procedures
The project implements procedures for:

- Registering students for courses.
- Generating student academic reports.
- Processing registration records in bulk.
- Demonstrating bulk DML error handling.

### 8. Stored Functions
The project implements:

- GET_LETTER_GRADE: Converts a numerical score into a letter grade.
- GET_STUDENT_AVERAGE: Calculates a student's average score.

### 9. Exception Handling
The project demonstrates:

- NO_DATA_FOUND
- TOO_MANY_ROWS
- DUP_VAL_ON_INDEX
- User-defined exceptions
- RAISE_APPLICATION_ERROR
- SAVE EXCEPTIONS and SQL%BULK_EXCEPTIONS

Exception handlers provide meaningful messages when errors occur.

### 10. Testing
The test scripts are located in the 03_tests directory.

They demonstrate successful operations, function results,
invalid inputs, and exception handling.

### 11. Conclusion
The project demonstrates practical Oracle PL/SQL programming
using records, collections, cursors, bulk processing, procedures,
functions, and exception handling.
