call batch61.UpdateSalaryByDept(10, 10);
select * from emp;


CREATE TABLE salgrade (

grade int,

losal int,

hisal int

);

INSERT INTO salgrade VALUES (1, 700, 1200);

INSERT INTO salgrade VALUES (2, 1201, 1400);

INSERT INTO salgrade VALUES (3, 1401, 2000);

INSERT INTO salgrade VALUES (4, 2001, 3000);

INSERT INTO salgrade VALUES (5, 3001, 9999);

select*from salgrade;

select e.ename,e.job,d.dname,d.loc,d.deptno,s.grade from emp e inner join dept d on e.deptno=d.deptno 
inner join salgrade s on e.sal between s.losal and s.hisal
 where s.grade=( select max(grade)  from emp e1 inner join salgrade s1 on e.sal between s.losal and s.hisal
 where  e1.deptno=s1.deptno );
