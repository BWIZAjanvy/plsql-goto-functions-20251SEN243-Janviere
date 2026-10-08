SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER := 15;
BEGIN
    IF v_num > 0 THEN
        GOTO lbl_positive;
    ELSIF v_num < 0 THEN
        GOTO lbl_negative;
    ELSE
        GOTO lbl_zero;
    END IF;

    <<lbl_positive>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is POSITIVE.');
    GOTO lbl_end;

    <<lbl_negative>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is NEGATIVE.');
    GOTO lbl_end;

    <<lbl_zero>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is ZERO.');
    GOTO lbl_end;

    <<lbl_end>>
    DBMS_OUTPUT.PUT_LINE('Classification completed successfully.');
END;
/