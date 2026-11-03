CREATE OR REPLACE FUNCTION get_student_average (
    p_student_id IN NUMBER
)
RETURN NUMBER
IS
    v_student_count NUMBER;
    v_grade_count   NUMBER;
    v_average       NUMBER;
BEGIN
    -- Check whether the student exists
    SELECT COUNT(*)
    INTO v_student_count
    FROM STUDENTS
    WHERE student_id = p_student_id;

    IF v_student_count = 0 THEN
        RAISE_APPLICATION_ERROR(
            -20012,
            'Student does not exist.'
        );
    END IF;

    -- Calculate the student's average score
    SELECT COUNT(g.grade_id), AVG(g.score)
    INTO v_grade_count, v_average
    FROM REGISTRATIONS r
    JOIN GRADES g
        ON r.registration_id = g.registration_id
    WHERE r.student_id = p_student_id;

    IF v_grade_count = 0 THEN
        RAISE_APPLICATION_ERROR(
            -20013,
            'This student has no recorded grades.'
        );
    END IF;

    RETURN ROUND(v_average, 2);

END;
/