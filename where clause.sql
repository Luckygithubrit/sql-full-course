-- USING WHERE CLAUSE

-- 1.WAQTD THE ANNUAL SALARY OF THE EMPLOYEE WHOS NAME IS SMITH
select ename,sal*12  from emp where ename='SMITH';
-- 2.WAQTD NAME OF THE EMPLOYEES WORKING AS CLERK
select ename,job from emp where job='clerk';
-- 3.WAQTD SALARY OF THE EMPLOYEES WHO ARE WORKING AS SALESMAN
select ename,job,sal from emp where job='salesman';

-- 4.WAQTD DETAILS OF THE EMP WHO EARNS MORE THAN 2000
select emp.* from emp where sal>2000;

-- 5.WAQTD DETAILS OF THE EMP WHOS NAME IS JONES
select emp.* from emp where ename='jones';

-- 6.WAQTD DETAILS OF THE EMP WHO WAS HIRED AFTER 01-JAN-81
select emp.* from emp where hiredate > '1981-01-01';

-- 7.WAQTD NAME AND SAL ALONG WITH HIS ANNUAL SALARY IF THE ANNUAL SALARY IS MORE THAN 12000
select ename,sal,sal*12 from emp where sal*12>12000;

-- 8.WAQTD EMPNO OF THE EMPLOYEES WHO ARE WORKING IN DEPT 30
select emp.*,empno from emp where deptno=20;

-- 9.WAQTD ENAME AND HIREDATE IF THEY ARE HIRED BEFORE 1981
select ename,hiredate from emp where hiredate<'1981-01-01';

-- 10. WAQTD DETAILS OF THE EMPLOYEES WORKING AS MANAGER
select emp.* from emp where job='manager';

-- 11. WAQTD NAME AND SALARY GIVEN TO AN EMPLOYEE IF EMPLOYEE EARNS A COMMISSION OF RUPEES 1400
select ename,sal,comm from emp where comm='1400';

-- 12.WAQTD DETAILS OF EMPLOYEES HAVING COMMISSION MORE THAN SALARY
select emp.* from emp where comm>sal;

-- 13. WAQTD EMPNO OF EMPLOYEES HIRED BEFORE THE YEAR 87
select empno,hiredate from emp where hiredate<'1987-01-01';

-- 14. WAQTD DETAILS OF EMPLOYEES WORKING AS AN N ANALYST
select emp.* from emp where job='analyst';

-- 15.WAQTD DETAILS OF EMPS EARNING MORE THAN 2000 RUPEES PER MONTH
select emp.* from emp where sal>'2000';