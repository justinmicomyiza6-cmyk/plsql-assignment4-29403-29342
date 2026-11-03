SET SERVEROUTPUT ON;

-- Test 1: Invalid student ID
BEGIN
    register_student(-999, 1);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Test 1 - Invalid student: ' || SQLERRM
        );
END;
/

-- Test 2: Invalid course ID
BEGIN
    register_student(1, -999);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Test 2 - Invalid course: ' || SQLERRM
        );
END;
/

-- Test 3: Duplicate registration
BEGIN
    register_student(1, 1);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Test 3 - Duplicate registration: ' || SQLERRM
        );
END;
/

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- BULK GRADE ERROR TEST ---');

    bulk_grade_error_demo;
END;
/



DECLARE
    v_student_name STUDENTS.first_name%TYPE;
BEGIN
    SELECT first_name
    INTO v_student_name
    FROM STUDENTS;

    DBMS_OUTPUT.PUT_LINE('Student: ' || v_student_name);

EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE(
            'TOO_MANY_ROWS handled: Multiple students were found.'
        );
END;
/

DECLARE
    e_invalid_score EXCEPTION;
    v_score NUMBER := 120;
BEGIN
    IF v_score < 0 OR v_score > 100 THEN
        RAISE e_invalid_score;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Valid score.');

EXCEPTION
    WHEN e_invalid_score THEN
        DBMS_OUTPUT.PUT_LINE(
            'User-defined exception handled: Score must be between 0 and 100.'
        );
END;
/