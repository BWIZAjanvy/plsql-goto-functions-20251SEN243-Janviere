CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_monthly_salary IN NUMBER
) RETURN NUMBER IS
    v_annual_salary NUMBER;
BEGIN
    IF p_monthly_salary IS NULL OR p_monthly_salary < 0 THEN
        RETURN 0;
    END IF;
    
    v_annual_salary := p_monthly_salary * 12;
    RETURN v_annual_salary;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END fn_annual_salary;
/