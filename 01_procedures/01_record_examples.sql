SET SERVEROUTPUT ON;

-- Example 1: Using %ROWTYPE
DECLARE
    v_student STUDENTS%ROWTYPE;
BEGIN
    SELECT *
    INTO v_student
    FROM STUDENTS
    WHERE ROWNUM = 1;

    DBMS_OUTPUT.PUT_LINE('--- STUDENT RECORD ---');
    DBMS_OUTPUT.PUT_LINE('Student ID: ' || v_student.student_id);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || v_student.first_name);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || v_student.last_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_student.email);
END;
/

-- Example 2: User-defined record
DECLARE
    TYPE student_info_type IS RECORD (
        full_name VARCHAR2(100),
        email_address VARCHAR2(100),
        enrollment_date DATE
    );

    v_student_info student_info_type;
BEGIN
    SELECT first_name || ' ' || last_name,
           email,
           enrollment_date
    INTO v_student_info
    FROM STUDENTS
    WHERE ROWNUM = 1;

    DBMS_OUTPUT.PUT_LINE('--- USER-DEFINED RECORD ---');
    DBMS_OUTPUT.PUT_LINE('Full Name: ' || v_student_info.full_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_student_info.email_address);
    DBMS_OUTPUT.PUT_LINE(
        'Enrollment Date: ' ||
        TO_CHAR(v_student_info.enrollment_date, 'DD-MON-YYYY')
    );
END;
/