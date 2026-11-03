SET SERVEROUTPUT ON;

DECLARE
    v_rows NUMBER;
BEGIN
    -- Update a student's email
    UPDATE STUDENTS
    SET email = 'justin.updated@auca.ac.rw'
    WHERE student_id = (
        SELECT MIN(student_id) FROM STUDENTS
    );

    -- Check the number of affected rows
    v_rows := SQL%ROWCOUNT;

    DBMS_OUTPUT.PUT_LINE('--- IMPLICIT CURSOR RESULTS ---');
    DBMS_OUTPUT.PUT_LINE('Rows updated: ' || v_rows);

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('SQL%FOUND: TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('SQL%FOUND: FALSE');
    END IF;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('SQL%NOTFOUND: TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('SQL%NOTFOUND: FALSE');
    END IF;

    -- Demonstrate SQL%NOTFOUND with a DELETE
    DELETE FROM STUDENTS
    WHERE student_id = -999;

    DBMS_OUTPUT.PUT_LINE(
        'Rows deleted: ' || SQL%ROWCOUNT
    );

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No student was deleted.');
    END IF;

    ROLLBACK;
END;
/