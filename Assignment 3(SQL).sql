
-- 1. Display all the information of the EMP tabl-e?
SELECT * FROM EMP;

-- 2.Display unique Jobs from EMP table?
SELECT DISTINCT(JOB) FROM EMP;

-- 3.List the emps in the asc order of their Salaries?
SELECT ENAME,SAL FROM EMP ORDER BY SAL ASC;

-- 4.List the details of the emps in asc order of  the Dptnos and desc of Jobs?
SELECT * FROM EMP ORDER BY DEPTNO,JOB ASC;

-- 5.Display all the unique job groups in the descending order?
SELECT DISTINCT(JOB) FROM EMP ORDER BY JOB DESC;

-- 6.Display all the details of all ‘Mgrs’
SELECT * FROM EMP WHERE JOB='MANAGER';

-- 7.List the emps who joined before 1981
SELECT ENAME,HIREDATE FROM EMP WHERE HIREDATE<'1981-01-01 00:00:00';

-- 8.List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Ann sal
SELECT EMPNO,ENAME,SAL,SAL/30 AS 'DAILY SALARY' FROM EMP ORDER BY SAL*12 ASC;

-- 9.Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
SELECT EMPNO,ENAME,JOB,HIREDATE,YEAR(NOW())-YEAR(HIREDATE) AS 'EXP' FROM EMP;

-- 10.List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
SELECT EMPNO,ENAME,SAL,YEAR(NOW())-YEAR(HIREDATE) AS 'EXP' FROM EMP WHERE MGR=7369;

-- 11.Display all the details of the emps whose Comm  Is more than their Sal
SELECT * FROM EMP WHERE COMM>SAL;

-- 12.List the emps along with their Exp and Daily Sal is more than Rs 100
SELECT * FROM EMP WHERE SAL/30>100;

-- 13.List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
SELECT ENAME,JOB FROM EMP WHERE JOB IN ('ANALYST','CLERK') ORDER BY ENAME DESC; 


-- 14.List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
 SELECT ENAME,HIREDATE FROM EMP WHERE HIREDATE IN('1981-05-01 00:00:00','1981-12-03 00:00:00','1980-01-19 00:00:00') ORDER BY HIREDATE; 

-- 15.List the emp who are working for the Deptno 10 or20
SELECT ENAME,DEPTNO FROM EMP WHERE DEPTNO IN (10,20);

-- 16.List the emps who are joined in the year 81
SELECT ENAME,HIREDATE FROM EMP WHERE YEAR(HIREDATE)=1981;

-- 17.List the emps Who Annual sal ranging from 22000 and 45000
SELECT ENAME,SAL*12 AS 'ANNUAL_SAL' FROM EMP WHERE SAL*12 BETWEEN 22500 AND 45000; 

-- 18.List the Enames those are having five characters in their Names
SELECT ENAME FROM EMP WHERE LENGTH(ENAME)=5;

-- 19.List the Enames those are starting with ‘S’ and with five characters
SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%' AND LENGTH(ENAME)=5;

-- 20.List the emps those are having four chars and third character must be ‘r’
SELECT ENAME FROM EMP WHERE LENGTH(ENAME)=4 AND ENAME LIKE '__R_';

-- 21.List the Five character names starting with ‘S’ and ending with ‘H’
SELECT ENAME FROM EMP WHERE LENGTH(ENAME)=5 AND ENAME LIKE 'S%H';

-- 22.List the emps who joined in January
SELECT ENAME,HIREDATE FROM EMP WHERE MONTHNAME(HIREDATE)='JANUARY';

-- 23.List the emps whose names having a character set ‘ll’ together
SELECT ENAME FROM EMP WHERE ENAME LIKE '%LL%';

-- 24.List the emps who does not belong to Deptno 20
SELECT ENAME,DEPTNO FROM EMP WHERE DEPTNO NOT LIKE 20;

-- 25.List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
SELECT ENAME,JOB,SAL FROM EMP WHERE JOB NOT IN ('PRESIDENT','MANAGER') ORDER BY SAL ASC;

-- 26.List the emps whose Empno not starting with digit 78
SELECT EMPNO,ENAME FROM EMP WHERE EMPNO NOT LIKE '78%';

-- 27.List the emps who are working under ‘MGR’
SELECT * FROM EMP GROUP BY MGR ORDER BY MGR;

-- 28.List the emps who joined in any year but not belongs to the month of March
SELECT ENAME,HIREDATE FROM EMP WHERE MONTHNAME(HIREDATE) NOT LIKE 'MARCH';

-- 29.List all the Clerks of Deptno 20
SELECT * FROM EMP WHERE JOB='CLERK' AND DEPTNO=20;

-- 30.List the emps of Deptno 30 or 10 joined in the year 1981
SELECT * FROM EMP WHERE YEAR(HIREDATE)=1981 AND DEPTNO IN (10,30);

-- 31.Display the details of SMITH
SELECT * FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO WHERE ENAME='SMITH';

-- 32.Display the location of SMITH
SELECT EMP.ENAME,DEPT.LOC FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO WHERE ENAME='SMITH';
