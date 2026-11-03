CREATE OR REPLACE PROCEDURE register_student (
    p_student_id IN NUMBER,
    p_course_id  IN NUMBER
)
IS
    v_count NUMBER;
BEGIN
    -- Check whether the student exists
    SELECT COUNT(*)
    INTO v_count
    FROM STUDENTS
    WHERE student_id = p_student_id;

    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Student does not exist.');
    END IF;

    -- Check whether the course exists
    SELECT COUNT(*)
    INTO v_count
    FROM COURSES
    WHERE course_id = p_course_id;

    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Course does not exist.');
    END IF;

    -- Register the student
    INSERT INTO REGISTRATIONS (
        student_id,
        course_id,
        status
    )
    VALUES (
        p_student_id,
        p_course_id,
        'REGISTERED'
    );

    DBMS_OUTPUT.PUT_LINE('Student registered successfully.');

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'Student is already registered for this course.'
        );

    WHEN OTHERS THEN
        RAISE;
END;
/