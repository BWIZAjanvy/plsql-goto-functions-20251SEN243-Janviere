CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_emp_id IN NUMBER,
    p_salary IN NUMBER
) RETURN VARCHAR2 IS
    v_count NUMBER;
BEGIN
    -- Check 1: Validate positive salary
    IF p_salary IS NULL OR p_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero.';
    END IF;
    
    -- Check 2: Verify employee exists in database
    SELECT COUNT(*) INTO v_count FROM employees WHERE employee_id = p_emp_id;
    IF v_count = 0 THEN
        RETURN 'INVALID: Employee ID ' || p_emp_id || ' does not exist.';
    END IF;
    
    RETURN 'VALID: Employee ' || p_emp_id || ' payroll data passed validation.';
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'ERROR: Payroll validation failed unexpectedly.';
END fn_validate_payroll;
/