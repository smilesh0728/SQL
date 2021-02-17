select *
from    emp
;

where   sal >= 1000
 and    emp >= 2000
 ;
 
select empno, ename, sal, comm
from emp
;

select empno, ename, sal, mgr, job
from    emp
where   sal >= 2000
 OR    job = 'MANAGER'
 AND EMPNO >=7500;


select empno, ename, sal, mgr, job
from    emp
where  ( sal >= 2000  AND EMPNO >=7500)
 OR    job = 'MANAGER'
 ;
 
 
SELECT empno, ename, sal, mgr, job
from    emp
where  eNAME LIKE '%AR%'

SELECT empno, ename, sal, mgr, job
from    emp
where  JOB IN ('CLERK'. 'SALESMAN', 'MANAGER');

SELECT empno, ename, sal, mgr, job
from    emp
where  JOB 'CLERK' OR JOB= 'SALESMAN' OR 'MANAGER' ;

SELECT empno, ename, sal, mgr, job
 from    emp
 where  SAL BETWEEN 200 AND 3000 ;
 
 SELECT empno, ename, sal, DEPTNO
 from    emp
 ;
 

  SELECT DEPTNO
 , COUNT(*) "�μ��� ��",
 MIN(EMPNO) AS "���" ,
 SUM(SAL) �հ�,
 MAX(SAL) �ƽ�, 
 ROUND(AVG(SAL), 1) ���
 from    emp
WHERE SAL >2500
  
 GROUP BY DEPTNO 
-- HAVING COUNT(*) > 2
 ORDER BY DEPTNO, DESC ;
 
 
 
 ALTER TABLE EMP
 ADD CONSTRAINT PK_EMP  PRIMARY KEY(EMPNO) 
 
 
 ALTER TABLE DEPT
 ADD CONSTRAINT PK_DEPT  PRIMARY KEY(DEPTNO) 
 
 ALTER TABLE EMP
 MODIFY ENAME VARCHAR2 (50) NOT NULL;
 
 SELERT * FROM DEPT;

 
 INSERT INTO DEPT (DEPTNO, DNAME, LOC)
VALUES (50, '������', '��ϵ�') ;


COMMIT;


SELECT * FROM EMP;

INSERT INTO EMP
 (EMPNO, ENAME, JOB, MGR, SAL, DEPTNO)
 
 VALUES (8001, 'ȫ�浿', '����', NULL, 5000, 10);
 
COMMIT;

 ROLLBACK;
 
 INSERT INTO EMP
 (EMPNO, ENAME, JOB, MGR, SAL, DEPTNO)
 
 VALUES (8002, '�̼���', '������', NULL, 5000, 10);
 
 SELECT * FROM EMP;
 
 COMMIT;
 
 INSERT INTO EMP
 VALUES (8003, '������', '�屺', NULL, NULL, 10000, NULL, 30) ;
 
 COMMIT;
 
 
 
 SELECT empno, ename, sal, TO_CHAR(HIREDATE, 'YYYY-MM-DD HH24:MI:SS') HIREDATE
 
 from    emp;
 
 INSERT INTO EMP ( empno, ename, sal, HIREDATE, DEPTNO)

VALUES (8005, '�Ӳ���', 1000, TO_DATE('2020-05-21 13:48:00', 'YYYY-MM-DD HH24:MI:SS'),20) ;

COMMIT;

SELECT * from emp order by empno;

 update emp
 set comm = 300
 where empno = 7369;
 
 commit;
 
 
 set empno '�ڻ�ȭ', 500, hiredate = to_date ('20210101', 'yyyymmdd')

 , comm =200
 where empno = 8005;
 


update emp
set job = '����', ename = '�ڻ�ȭ', sal = 500, hiredate = to_date ('20210101', 'yyyymmdd'),
      comm = 500
 where empno = 8005;
  commit;
  
  select * from emp;
  
  delete from emp where empno in (8002, 8003, 8005);
  
  commit;
  
  alter table dept
  drop constraint pk_emp;
  
  alter table dept 
  add constraint pk_dept primary key(deptno);
  
   select * from emp;
   
   delete from emp where sal >= 3000;
   
   
rollback;

 select * from emp;
   
   delete 
   from emp 
   where sal >= 2000
   and comm is not null or deptno = 20 ;
   
 select * from emp;
 
 select -- distinct
            job, deptno
 from emp
 order by job, deptno; 
 
 select job,  deptno
 from emp
 union all 
 select job, deptno 
 from emp ;
 
  select job,  deptno
 from emp
 union
 select job, deptno 
 from emp ;
 
 select e.empno, e.ename, e.sal, e.comm, d.deptno, d.dname, d.loc
 from  emp e, dept d
 where e.sal >= 2000
 and d.deptno = e.deptno
 --������, ������ �ٸ� ǥ�� �����ͼ� ������ ��, .e.d ��� ���Ӹ��� select�ű���ο� �� ���־�� ��
 and d.loc = 'new york' ;



select e.ename, e.sal, e.comm, TO_CHAR(e.HIREDATE, 'YYYY.MM.DD'),
            d.deptno, d.dname, d.loc
 from  emp e, 
           dept d
           
 where e.sal > 2000  
  and  e.hiredate between TO_DATE ('19810101', 'YYYYMMDD')
                                    and TO_DATE ('20001231', 'YYYYMMDD')
  and d.deptno = e.deptno
  ;
select *
from  emp
where sal > 2000
 and hiredate between TO_DATE ('19810101', 'YYYYMMDD')
                                    and TO_DATE ('20001231', 'YYYYMMDD')
                                    ;

  
  