SET SERVEROUTPUT ON;

DECLARE
    -- Declare an explicit cursor
    CURSOR student_cursor IS
        SELECT student_id, first_name, last_name, email
        FROM STUDENTS
        ORDER BY student_id;

    -- Variables to hold fetched values
    v_id STUDENTS.student_id%TYPE;
    v_first_name STUDENTS.first_name%TYPE;
    v_last_name STUDENTS.last_name%TYPE;
    v_email STUDENTS.email%TYPE;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- REGISTERED STUDENTS ---');

    -- Open the cursor
    OPEN student_cursor;

    LOOP
        -- Fetch one student at a time
        FETCH student_cursor
        INTO v_id, v_first_name, v_last_name, v_email;

        -- Stop when there are no more records
        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_id ||
            ' | Name: ' || v_first_name || ' ' || v_last_name ||
            ' | Email: ' || v_email
        );
    END LOOP;

    -- Close the cursor
    CLOSE student_cursor;
END;
/