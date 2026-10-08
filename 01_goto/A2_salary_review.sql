SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 4000;
BEGIN
    IF v_salary < 3000 THEN
        GOTO lbl_low;
    ELSIF v_salary BETWEEN 3000 AND 6000 THEN
        GOTO lbl_medium;
    ELSE
        GOTO lbl_high;
    END IF;

    <<lbl_low>>
    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' -> Low Salary Tier');
    GOTO lbl_finish;

    <<lbl_medium>>
    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' -> Medium Salary Tier');
    GOTO lbl_finish;

    <<lbl_high>>
    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' -> High Salary Tier');
    GOTO lbl_finish;

    <<lbl_finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review process complete.');
END;
/