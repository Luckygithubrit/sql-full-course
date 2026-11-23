-- LIKE , NOT LIKE

-- 1.WAQTD NUMBER OF EMPLOYEES HAVING 'A' AS THEIR FIRST CHARACTER-- 
select* from emp where ename like 'A%';

-- 2.WAQTD NUMBER OF EMPLOYEES HAVING CHARACTER 'Z' IN THEIR NAMES
select count(*) from emp where ename like '%Z%';

-- 3.WAQTD NUMBER OF EMPLOYEES HAVING '$' IN THEIR NAMES.
select count(*) from emp where ename like '%$%';

-- 4.WAQTD NUMBER OF EMPLOYEES HAVING 'A' IN THEIR NAMES
select * from emp where ename like '%A%';

-- 5.WAQTD NUMBER OF EMPS AND TOTAL SALARY NEEDED TO PAY THE EMPLOYEES WHO HAVE 2 CONSICUTIVE L's IN THEIR NAMES
select count(*),sum(sal) from emp where ename like 'L%_%L';

-- 6) LIST THE EMPLOYEES WHOSE NAME DOES NOT END WITH 'ES' OR 'R'
select * from emp where ename not like '%ES' or ename not like '%R';

-- 7) DISPLAY ALL THE EMPLOYEE WHO ARE 'SALESMAN'S HAVING 'E' AS THE LAST BUT ONE CHARACTER IN ENAME BUT SALARY HAVING EXACTLY 4 CHARACTER
select * from emp where job='salesman' and ename like '%E_' and sal like '____';

-- 8) LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'M' OR 'J'
select * from emp where ename like 'M%' or ename like 'J%';

-- 9) LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'S' OR 'A'
select * from emp where ename like '%S' or ename like 'A';

-- 10) LIST THE EMPLOYEES WHOSE NAME DOES NOT START WITH 'S'
select * from emp where ename not like 'S%';