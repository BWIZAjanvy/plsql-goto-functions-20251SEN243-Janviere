SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(101, 4500)); -- Valid
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(999, 3000)); -- Non-existent employee
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(102, -500)); -- Invalid salary
END;
/