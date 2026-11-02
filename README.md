Assignment IV: Advanced Oracle PL/SQL Programming
The Student Registration and Grading Management System is a database application developed using Oracle Database and PL/SQL.

The system is designed to manage student information, course registration, academic records, and student grades. It demonstrates how PL/SQL programming concepts can be applied to solve practical institutional database management problems.
- Manage student records.
- Manage available academic courses.
- Register students for courses.
- Record and manage student grades.
- Generate student registration and grading reports.
- Demonstrate advanced Oracle PL/SQL programming concepts.
- Oracle Database
- Oracle SQL Developer
- PL/SQL
- Git and GitHub
This project demonstrates:
1. User-defined records and %ROWTYPE.
2. Collections: associative arrays, nested tables, and VARRAYs.
3. Implicit cursors and cursor attributes.
4. Explicit cursors.
5. Bulk processing using BULK COLLECT and FORALL.
6. Stored procedures.
7. Stored functions.
8. Exception handling, including predefined and user-defined exceptions.
```
plsql-assignment4-29403-29342/
│
├── README.md
├── .gitignore
├── 00_schema/
│   ├── 01_create_tables.sql
│   └── 02_insert_sample_data.sql
├── 01_procedures/
├── 02_functions/
├── 03_tests/
│   ├── test_success_cases.sql
│   └── test_error_cases.sql
├── screenshots/
└── docs/
    └── IMPLEMENTATION_NOTES.md
```
1. Connect to Oracle Database using Oracle SQL Developer.
2. Execute 00_schema/01_create_tables.sql.
3. Execute 00_schema/02_insert_sample_data.sql.
4. Compile the stored procedures in 01_procedures/.
5. Compile the stored functions in 02_functions/.
6. Execute the test scripts in 03_tests/.
7. Review the execution results and screenshots.
- Course: INSY 8311 – Database Development with PL/SQL
- Instructor: Eric Maniraguha
- Assignment: Group Assignment IV
- Academic Institution: Adventist University of Central Africa (AUCA)
