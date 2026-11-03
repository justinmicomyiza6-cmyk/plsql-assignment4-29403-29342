SET SERVEROUTPUT ON;

BEGIN
    register_student(5, 1);

    ROLLBACK;
END;
/