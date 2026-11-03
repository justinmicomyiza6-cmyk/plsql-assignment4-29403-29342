# Student Registration and Grading Management System

## Course Information
- Course: Database Development with PL/SQL (INSY 8311)
- Assignment: Group Assignment IV – Advanced Oracle PL/SQL Programming
- Instructor: Eric Maniraguha

## Group Members
1. MICOMYIZA Justin – 29403
2. MUTESI Francine – 29342

## Project Description
This project is an Oracle PL/SQL-based Student Registration and
Grading Management System. It manages student records, courses,
registrations, and academic grades.

## Technologies
- Oracle Database
- Oracle SQL Developer
- Oracle PL/SQL
- Git and GitHub

## Database Tables
1. STUDENTS
2. COURSES
3. REGISTRATIONS
4. GRADES

## PL/SQL Concepts Implemented
- User-defined records and %ROWTYPE
- Associative arrays and collections
- Implicit and explicit cursors
- BULK COLLECT and FORALL
- SAVE EXCEPTIONS
- Stored procedures
- Stored functions
- Predefined and user-defined exceptions
- RAISE_APPLICATION_ERROR

## Project Structure
- 00_schema: Database tables and sample data.
- 01_procedures: PL/SQL procedures and demonstrations.
- 02_functions: Stored functions.
- 03_tests: Success and error test scripts.
- docs: Implementation notes.
- screenshots: Evidence of execution and testing.

## How to Run
1. Open Oracle SQL Developer and connect to your Oracle database.
2. Execute `00_schema/01_create_tables.sql`.
3. Execute `00_schema/02_insert_sample_data.sql`.
4. Execute the SQL files in `01_procedures`.
5. Execute the SQL files in `02_functions`.
6. Execute the test scripts in `03_tests`.

Run scripts using F5 (Run Script) and enable DBMS Output
to view execution messages.

## Documentation
See `docs/IMPLEMENTATION_NOTES.md` for implementation details.

## Project Testing and Validation

The project includes test scripts to check the correctness of database procedures and functions.

Testing helps identify errors and ensures that the PL/SQL programs produce the expected results.
