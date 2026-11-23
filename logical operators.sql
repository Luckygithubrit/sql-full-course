-- ASSIGNMENT ON LOGICAL OPERATORS :

-- 1.WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK AND EARNING LESS THAN 1500
select * from emp where job='clerk' and sal<'1500';

-- 2.WAQTD NAME AND HIREDATE OF THE EMPLOYEES WORKING AS MANAGER IN DEPT 30
select * from emp where job='manager' and deptno='30';

-- 3.WAQTD DETAILS OF THE EMP ALONG WITH ANNUAL SALARY IF THEY ARE WORKING IN DEPT 30 AS SALESMAN AND THEIR ANNUAL SALARY HAS TO BE GREATER THAN 14000.
select emp.*,sal*12 from emp where deptno='30' and job='salesman' and sal*12>14000;

-- 4.WAQTD ALL THE DETAILS OF THE EMP WORKING IN DEPT 30 OR AS ANALYST
select * from emp where deptno='30' or job='analyst';

-- 5.WAQTD NAMES OF THE EMPMLOYEES WHOS SALARY IS LESS THAN 1100 AND THEIR DESIGNATION IS CLERK
select * from emp where sal<1100 and job='clerk';

-- 6.WAQTD NAME AND SAL, ANNUAL SAL AND DEPTNO IF DEPTNO IS 20 EARNING MORE THAN 1100 AND ANNUAL SALARY EXCEEDS 12000
select ename,sal,sal*12 as annualsal,deptno where deptno='20' and sal>110 and sal*12>12000;

-- 7.WAQTD EMPNO AND NAMES OF THE EMPLOYEES WORKING AS MANAGER IN DEPT 20
select empno,ename from emp where job='manager' and deptno='20';

-- 8.WAQTD DETAILS OF EMPLOYEES WORKING IN DEPT 20 OR 30.
select * from emp where deptno='20' or deptno='30';

-- 9.WAQTD DETAILS OF EMPLOYEES WORKING AS ANALYST IN DEPT 10.
select * from emp where job='analyst';

-- 10.WAQTD DETAILS OF EMPLOYEE WORKING AS PRESIDENT WITH SALARY OF RUPEES 4000
select * from emp where job='president' and sal='4000';

-- 11. WAQTD NAMES AND DEPTNO, JOB OF EMPS WORKING AS CLERK IN DEPT 10 OR 20
select ename,deptno,job from emp where job='clerk' and (deptno='10' or deptno='20');

-- 12.WAQTD DETAILS OF EMPLOYEES WORKING AS CLERK OR MANAGER IN DEPT 10.
select * from emp where (job='clerk' or job='manager') and deptno='10';

-- 13. WAQTD NAMES OF EMPLOYEES WORKING IN DEPT 10, 20, 30, 40.
select emp.* from emp where deptno='10' or deptno='20' or deptno='30' or deptno='40';

-- 14. WAQTD DETAILS OF EMPLOYEES WITH EMPNO 7902,7839.
select * from emp where empno='7902' or empno='7839';

-- 15.WAQTD DETAILS OF EMPLOYEES WORKING AS MANAGER OR SALESMAN OR CLERK
select * from emp where job='manager' or job='salesman' or job='clerk';

-- 16. WAQTD NAMES OF EMPLOYEES HIRED AFTER 81 AND BEFORE 87
select * from emp where hiredate>'1981-01-01' and hiredate<'1987-01-01';

-- 17.WAQTD DETAILS OF EMPLOYEES EARNING MORE THAN 1250 BUT LESS THAN 3000
select * from emp where sal>'1250' and sal<'3000';

-- 18. WAQTD NAMES OF EMPLOYEES HIRED AFTER 81 INTO DEPT 10 OR 30
select * from emp where hiredate>1981-01-01 and deptno='10' or deptno='30';

-- 19.WAQTD NAMES OF EMPLOYEES ALONG WITH ANNUAL SALARY FOR THE EMPLOYEES WORKING AS MANAGER OR CLERK INTO DEPT 10 OR 30
select *,sal*12 as annual from emp where (job='manager' or job='clerk') and (deptno='10' or deptno='30');

-- 20.WAQTD ALL THE DETAILS ALONG WITH ANNUAL SALARY IF SAL IS BETWEEN 1000 AND 4000 ANNUAL SALARY MORE THAN 15000
select *,sal*12 as annual from emp where sal>='1000' and sal<='4000' and sal*12>'15000';