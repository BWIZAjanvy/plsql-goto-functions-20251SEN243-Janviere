SET LINESIZE 200 PAGESIZE 100;

-- Format column display widths
COLUMN employee_id FORMAT 9999 HEADING "EMP_ID";
COLUMN full_name FORMAT A20 HEADING "FULL_NAME";
COLUMN department FORMAT A18 HEADING "DEPARTMENT";
COLUMN monthly_salary FORMAT 999999 HEADING "MONTHLY_SAL";
COLUMN annual_salary FORMAT 999999 HEADING "ANNUAL_SAL";
COLUMN monthly_tax FORMAT 999999 HEADING "MONTHLY_TAX";
COLUMN years_of_service FORMAT 9999 HEADING "YRS_SERVICE";

-- Run the formatted query
SELECT 
    e.employee_id,
    e.first_name || ' ' || e.last_name AS full_name,
    fn_dept_name(e.department_id) AS department,
    e.salary AS monthly_salary,
    fn_annual_salary(e.salary) AS annual_salary,
    fn_calculate_tax(e.salary) AS monthly_tax,
    fn_years_of_service(e.hire_date) AS years_of_service
FROM employees e;