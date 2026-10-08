CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date IN DATE
) RETURN NUMBER IS
    v_years NUMBER;
BEGIN
    IF p_hire_date IS NULL THEN
        RETURN 0;
    END IF;
    
    v_years := TRUNC(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
    
    IF v_years < 0 THEN
        RETURN 0;
    END IF;
    
    RETURN v_years;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END fn_years_of_service;
/