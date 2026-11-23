-- COUNT,AVG,MAX,MIN 

-- 1.WAQTD NUMBER OF EMPLOYEES GETTING SALARY LESS THAN 2000 IN DEPTΝΟ 10 
select count(*) from emp where sal<'2000' and deptno='10'; 

-- 2.WAQTD TOTAL SALARY NEEDED TO PAY EMPLOYEES WORKING AS CLERK-- 
select sum(sal) as sum from emp where job='clerk';

-- 3.WAQTD AVERAGE SALARY NEEDED TO PAY ALL EMPLOYEES -- 
select avg(sal) from emp ;

-- 4.WAQTD NUMBER OF EMPLOYEES WORKING AS CLERK OR MANAGER
select count(*) from emp where job='clerk' or job='manager';

-- 5.WAQTD TOTAL SALARY NEEDED TO PAY EMPLOYEES HIRED IN FEB
select sum(sal) from emp where month(hiredate)='02';

-- 6.WAQTD NUMBER OF EMPLOYEES REPORTING TO 7839 (MGR)
select count(*) from emp where mgr='7839';

-- 7.WAQTD NUMBER OF EMPLOYEES GETTING COMISSION IN DEPTNO 30
select emp.*,count(*) over() as total from emp where comm IS not null and deptno=30; 

-- 8.WAQTD AVG SAL, TOTAL SAL, NUMBER OF EMPS AND MAXIMUM SALARY GIVEN TO EMPLOYEES WORKING AS PERSIDENT
select avg(sal),sum(sal),count(*),max(sal) from emp where job='manager';

-- 9.WAQTD NUMBER OF DEPARTMENTS PRESENT IN EMPLOYEE TABLE
select distinct count(job) from emp ;

-- 10.WAQTD TOTAL SALARY GIVEN TO EMPLOYEES WORKING AS CLERK IN DEPT 30
select sum(sal) from emp where job='clerk' and deptno='30';

-- 11.WAQTD MAXIMUM SALARY GIVEN TO THE EMPLOYEES WORKING AS ANALYST
select max(sal) from emp where job='analyst';

-- 12.WAQTD NUMBER OF DISTINCT SALARIES PRESENT IN EMPLOYEE TABLE
select distinct count(sal) from emp;

-- 13.WAQTD NUMBER OF JOBS PRESENT IN EMPLOYEE TABLE
select count(job) from emp;

-- 14.WATQD AVG SALARY GIVEN TO THE CLERK
select avg(sal) from emp where job='clerk';

-- 15.WAQTD MINIMUM SALARY GIVEN TO THE EMPLOYEES WHO WORK IN DEPT 10 AS MANAGER OR A CLERK
select min(sal) from emp where deptno='10' and (job='manager' or job='clerk');
select min(sal) from emp where deptno='10' and job in ('manager','clerk');