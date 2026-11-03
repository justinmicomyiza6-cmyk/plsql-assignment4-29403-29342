SET SERVEROUTPUT ON;

DECLARE
    -- Create a collection to store registration IDs
    TYPE registration_list_type IS TABLE OF
        REGISTRATIONS.registration_id%TYPE;

    v_registration_ids registration_list_type;
BEGIN
    -- BULK COLLECT retrieves all registration IDs at once
    SELECT registration_id
    BULK COLLECT INTO v_registration_ids
    FROM REGISTRATIONS;

    DBMS_OUTPUT.PUT_LINE('--- BULK PROCESSING ---');

    DBMS_OUTPUT.PUT_LINE(
        'Registrations collected: ' || v_registration_ids.COUNT
    );

    -- FORALL processes multiple DML operations efficiently
    IF v_registration_ids.COUNT > 0 THEN

        FORALL i IN 1..v_registration_ids.COUNT
            UPDATE REGISTRATIONS
            SET status = status
            WHERE registration_id = v_registration_ids(i);

        DBMS_OUTPUT.PUT_LINE(
            'Rows processed by FORALL: ' || SQL%ROWCOUNT
        );

    ELSE
        DBMS_OUTPUT.PUT_LINE('No registrations found.');
    END IF;

    -- Undo the demonstration updates
    ROLLBACK;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/