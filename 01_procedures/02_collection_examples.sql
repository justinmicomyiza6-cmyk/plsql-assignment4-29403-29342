SET SERVEROUTPUT ON;

DECLARE
    -- Define an associative array
    TYPE student_list_type IS TABLE OF VARCHAR2(100)
        INDEX BY PLS_INTEGER;

    -- Declare a collection variable
    v_students student_list_type;
    v_index PLS_INTEGER;
BEGIN
    -- Store student names in the collection
    v_students(1) := 'Justin Micomyiza';
    v_students(2) := 'Francine Mutesi';
    v_students(3) := 'David Niyonzima';
    v_students(4) := 'Grace Uwase';
    v_students(5) := 'Samuel Habimana';

    -- Display collection contents
    DBMS_OUTPUT.PUT_LINE('--- STUDENT COLLECTION ---');

    v_index := v_students.FIRST;

    WHILE v_index IS NOT NULL LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Student ' || v_index || ': ' || v_students(v_index)
        );

        v_index := v_students.NEXT(v_index);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Total students: ' || v_students.COUNT);
END;
/