select ename,job,sal,dept.loc from emp inner join dept on emp.deptno=dept.deptno where dept.loc='dallas';

select ename,dname from emp inner join dept on emp.deptno=dept.deptno 
where emp.job in ('manager','analyst');

select ename,job,dname,dept.loc from emp inner join dept on emp.deptno=dept.deptno where emp.sal>1500 and dept.loc='chicago';


select e.ename,e.sal,d.dname,e.deptno,d.loc from emp as e inner join dept as d on e.deptno=d.deptno 
where e.sal=(select max(sal) from emp where deptno=e.deptno);

select e1.ename as employeeName,e2.ename as managername from emp e1 join emp e2 on e1.mgr=e2.empno;


select e1.ename as employeeName,e2.ename as managername,e1.deptno,e2.deptno from  emp e1 join emp e2 on e1.mgr=e2.empno 
where e1.deptno!=e2.deptno;

create view exp_7years as
select empno,ename,sal,dname from emp e inner join dept d on e.deptno=d.deptno
 where job in ('Manager','Analyst') and d.loc in ('Dallas','New york') and
 year(curdate()) -year(e.hiredate)>7 and e.comm is null order by d.loc asc;
 

 select e.ename,e.job,e.sal,d.dname,d.loc from emp e  join  dept d on e.deptno = d.deptno
 where e.sal>(select avg(sal) from emp where deptno in(select deptno from dept where loc ='New york')) and  d.loc!='New york';
 
 select e1.sal,e1.empno,e1.ename as empname,e2.mgr, e2.ename as mgrname,e2.sal-e1.sal  from emp e1 join emp e2 on e1.mgr=e2.empno
 where  e1.sal<e2.sal;

call `new_procedure`();
call `new_procedure2`();

select e1.ename as employeeName,e1.job as jobtitle,d.dname as departmentname,d.loc as departmentlocation,
e2.ename as managername ,year(curdate())-year(e1.hiredate) as employeeexperience,year(curdate())-year(e2.hiredate)  as managerexperience
from emp e1 join emp e2 on e1.mgr=e2.empno join dept d on e1.deptno=d.deptno
where e1.mgr is not null 
order by d.dname,e1.ename;
 
 call GetDeptsalaryStatus(10,@avg_sal,@emp_count,@max_sal);
 select @avg_sal,@emp_count,@max_sal;


select e1.ename asemployee_name,e2.ename as mgr_name from emp e1 join emp e2 on e1.mgr=e2.empno 
where month(e1.hiredate)=month(e2.hiredate);
 
 call even_odd(100);
