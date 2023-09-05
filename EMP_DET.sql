create table dept (deptno number(10),dname varchar2(50),loc varchar2(25),
constraint pk_deptid primary key (deptno));
/
insert into dept values(10,'ACCOUNTING','NEW YORK');
insert into dept values(20,'RESEARCH','DALLAS');
insert into dept values(30,'SALES','CHICAGO');
insert into dept values(40,'OPERATIONS','BOSTON');
/
create table emp (empno varchar2(50),ename varchar2(50),job varchar2(50),mgr number(10),
                 hiredate date,sal number(14,2),comm number(14,2),deptno,
                 constraint pk_empno PRIMARY key (empno),
                 constraint fk_deptno foreign key (deptno)
                 references dept(deptno));
/
insert into emp values(7839,'KING','PRESIDENT','','17-NOV-1981',5000,'',10);
insert into emp values(7698,'BLAKE','RM',7839,'01-MAY-1981',2850,'',30);
insert into emp values(7782,'CLARK','RM',7839,'09-JUN-1981',2450,'',10);
insert into emp values(7566,'JONES','RM',7839,'02-APR-1981',2975,'',20);
insert into emp values(7788,'SCOTT','ANALYST',7566,'19-APR-1987',3000,'',20);
insert into emp values(7902,'FORD','ANALYST',7566,'03-DEC-1981',3000,'',20);
insert into emp values(7369,'SMITH','CLERK',7902,'17-DEC-1980',800,'',20);
insert into emp values(7499,'ALLEN','SALESMAN',7698,'20-FEB-1981',1600,300,30);
insert into emp values(7521,'WARD','SALESMAN',7698,'22-FEB-1981',1250,500,30);
insert into emp values(7654,'MARTIN','SALESMAN',7698,'28-SEP-1981',1250,1400,30);
insert into emp values(7844,'TURNER','SALESMAN',7698,'08-SEP-1981',1500,0,30);
insert into emp values(7876,'ADAMS','CLERK',7788,'23-MAY-1987',1100,'',20);
insert into emp values(7900,'JAMES','CLERK',7098,'03-DEC-1981',950,'',30);
insert into emp values(7934,'MILLER','CLERK',7782,'23-JAN-1982',1300,'',10);
/