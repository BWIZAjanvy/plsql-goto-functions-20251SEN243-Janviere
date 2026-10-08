SET SERVEROUTPUT ON;

DECLARE
    v_annual_sal NUMBER;
    v_years      NUMBER;
    v_tax        NUMBER;
    v_dname      VARCHAR2(50);
BEGIN
    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('          TESTING PL/SQL STORED FUNCTIONS          ');
    DBMS_OUTPUT.PUT_LINE('==================================================');

    -- 1. Test fn_annual_salary
    v_annual_sal := fn_annual_salary(4500);
    DBMS_OUTPUT.PUT_LINE('1. Annual Salary ($4,500/mo) : $' || v_annual_sal);

    -- 2. Test fn_years_of_service
    v_years := fn_years_of_service(TO_DATE('2020-03-15', 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('2. Years of Service (2020-03-15): ' || v_years || ' years');

    -- 3. Test fn_calculate_tax
    v_tax := fn_calculate_tax(4500);
    DBMS_OUTPUT.PUT_LINE('3. Monthly Tax ($4,500 salary) : $' || v_tax);

    -- 4. Test fn_dept_name (Valid Dept ID)
    v_dname := fn_dept_name(20);
    DBMS_OUTPUT.PUT_LINE('4. Dept Name (Dept ID 20)      : ' || v_dname);

    -- 5. Test fn_dept_name (Invalid Dept ID - Exception Handling Test)
    v_dname := fn_dept_name(999);
    DBMS_OUTPUT.PUT_LINE('5. Dept Name (Dept ID 999)     : ' || v_dname);

    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('             ALL FUNCTION TESTS COMPLETE          ');
    DBMS_OUTPUT.PUT_LINE('==================================================');
END;
/