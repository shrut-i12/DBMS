-- CREATE TABLE employee (
--     emp_id      NUMBER PRIMARY KEY,
--     emp_name    VARCHAR2(100),
--     department  VARCHAR2(50),
--     salary      NUMBER(10,2),
--     hire_date   DATE
-- );

-- CREATE TABLE oldemployee (
--     emp_id        NUMBER PRIMARY KEY,
--     emp_name      VARCHAR2(100),
--     department    VARCHAR2(50),
--     salary        NUMBER(10,2),
--     hire_date     DATE,
--     deleted_date  DATE
-- );

-- CREATE OR REPLACE TRIGGER trg_employee_delete
-- BEFORE DELETE ON employee
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO oldemployee (
--         emp_id,
--         emp_name,
--         department,
--         salary,
--         hire_date,
--         deleted_date
--     ) VALUES (
--         :OLD.emp_id,
--         :OLD.emp_name,
--         :OLD.department,
--         :OLD.salary,
--         :OLD.hire_date,
--         SYSDATE
--     );
-- END;
-- /

-- INSERT INTO employee VALUES (1, 'John Doe', 'IT', 5000, SYSDATE);
-- COMMIT;
-- DELETE FROM employee WHERE emp_id = 1;
-- COMMIT;

-- SELECT * FROM oldemployee;

-- INSERT INTO employee (emp_id, emp_name, department, salary, hire_date)
-- VALUES (1, 'John Doe', 'IT', 55000, TO_DATE('2020-03-15', 'YYYY-MM-DD'));

-- INSERT INTO employee (emp_id, emp_name, department, salary, hire_date)
-- VALUES (2, 'Jane Smith', 'HR', 48000, TO_DATE('2019-06-10', 'YYYY-MM-DD'));

-- INSERT INTO employee (emp_id, emp_name, department, salary, hire_date)
-- VALUES (3, 'Robert Brown', 'Finance', 62000, TO_DATE('2021-01-05', 'YYYY-MM-DD'));

-- INSERT INTO employee (emp_id, emp_name, department, salary, hire_date)
-- VALUES (4, 'Emily Davis', 'Marketing', 51000, TO_DATE('2022-09-22', 'YYYY-MM-DD'));

-- INSERT INTO employee (emp_id, emp_name, department, salary, hire_date)
-- VALUES (5, 'Michael Wilson', 'Operations', 58000, TO_DATE('2020-12-01', 'YYYY-MM-DD'));

-- select * from employee;

-- select * FROM oldemployee;

-- DELETE FROM employee WHERE emp_id = 4;
-- DELETE FROM employee WHERE emp_id = 2;

select * FROM oldemployee;
