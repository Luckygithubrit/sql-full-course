-- 1.WAQTD NAME OF THE EMPLOYEE ALONG WITH THEIR ANNUAL SALARY.
select ename,sal*12 from emp;

-- 2.WAQTD ENAME AND JOB FOR ALL THE EMPLOYEE WITH THEIR HALF TERM SALARY.
select ename,job,sal*6 from emp;

-- 3.WAQTD ALL THE DETAILS OF THE EMPLOYEES ALONG WITH AN ANNUALBONUS OF 2000.
select emp.*,sal*12+2000 as annualbonus from emp ;

-- 4.WAQTD NAME SALARY AND SALARY WITH A HIKE OF 10%.
select ename,sal,sal*12+sal*12*10/100 as HIKE from emp;

-- 5.WAQTD NAME AND SALARY WITH DEDUCTION OF 25%.
select ename,sal,sal-sal*1/4 as deduction from emp;

-- 8. WAQTD TOTAL SALARY GIVEN TO EACH EMPLOYEE (SAL+COMM).
select ename,sal,sal+coalesce(comm,0) as totalslary from emp;