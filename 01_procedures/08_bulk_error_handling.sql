CREATE OR REPLACE PROCEDURE bulk_update_registration_status
IS
    TYPE registration_ids_type IS TABLE OF
        REGISTRATIONS.registration_id%TYPE;

    v_ids registration_ids_type;

    e_bulk_errors EXCEPTION;
    PRAGMA EXCEPTION_INIT(e_bulk_errors, -24381);

BEGIN
    -- Retrieve registration IDs
    SELECT registration_id
    BULK COLLECT INTO v_ids
    FROM REGISTRATIONS;

    IF v_ids.COUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No registrations found.');
        RETURN;
    END IF;

    -- Perform bulk updates and save individual errors
    BEGIN
        FORALL i IN 1..v_ids.COUNT SAVE EXCEPTIONS
            UPDATE REGISTRATIONS
            SET status = status
            WHERE registration_id = v_ids(i);

        DBMS_OUTPUT.PUT_LINE(
            'Rows updated: ' || SQL%ROWCOUNT
        );

    EXCEPTION
        WHEN e_bulk_errors THEN
            DBMS_OUTPUT.PUT_LINE(
                'Number of bulk errors: ' ||
                SQL%BULK_EXCEPTIONS.COUNT
            );

            FOR i IN 1..SQL%BULK_EXCEPTIONS.COUNT LOOP
                DBMS_OUTPUT.PUT_LINE(
                    'Error at collection index: ' ||
                    SQL%BULK_EXCEPTIONS(i).ERROR_INDEX ||
                    ' | Oracle error code: ' ||
                    SQL%BULK_EXCEPTIONS(i).ERROR_CODE
                );
            END LOOP;
    END;

    ROLLBACK;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/