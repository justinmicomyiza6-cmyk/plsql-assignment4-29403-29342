SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Score 85: ' || get_letter_grade(85));
    DBMS_OUTPUT.PUT_LINE('Score 72: ' || get_letter_grade(72));
    DBMS_OUTPUT.PUT_LINE('Score 65: ' || get_letter_grade(65));
    DBMS_OUTPUT.PUT_LINE('Score 45: ' || get_letter_grade(45));
END;
/