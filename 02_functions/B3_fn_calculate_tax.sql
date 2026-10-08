CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary IN NUMBER
) RETURN NUMBER IS
    v_tax NUMBER := 0;
BEGIN
    IF p_salary IS NULL OR p_salary <= 0 THEN
        RETURN 0;
    END IF;
    
    IF p_salary <= 2000 THEN
        v_tax := p_salary * 0.10;
    ELSIF p_salary BETWEEN 2001 AND 5000 THEN
        v_tax := p_salary * 0.15;
    ELSE
        v_tax := p_salary * 0.20;
    END IF;
    
    RETURN v_tax;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END fn_calculate_tax;
/