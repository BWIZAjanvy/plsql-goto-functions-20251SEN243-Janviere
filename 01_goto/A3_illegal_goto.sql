SET SERVEROUTPUT ON;

-- Corrected PL/SQL Implementation
DECLARE
    v_flag BOOLEAN := TRUE;
BEGIN
    IF v_flag THEN
        GOTO lbl_valid;
    END IF;

    GOTO lbl_end;

    <<lbl_valid>>
    DBMS_OUTPUT.PUT_LINE('Corrected: Jumped to valid label outside IF block.');

    <<lbl_end>>
    DBMS_OUTPUT.PUT_LINE('Execution finished cleanly.');
END;
/