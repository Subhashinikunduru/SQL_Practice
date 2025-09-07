use batch61;
#second highestsalary
select * from (select *,dense_rank() over(partition by deptno order by sal desc) as rnk from emp)  as emp2 where rnk=2;
#update salary
call Update_Sal(7369,10);#800---->880sal incre
select*from emp;

 select Factorial(6);
 
create view firstView as 
select e.ename as employee,d.dname as departmentName,m.ename as manager 
from emp e left join emp m on e.mgr=m.empno join dept d on e.deptno=d.deptno;

SELECT * FROM batch61.firstview;
drop trigger update_hire_date;

create trigger update_hire_date before insert on emp 
for each row set new.hiredate = curdate();

select e.ename,e.sal,d.dname,d.loc,s.grade from (select deptno,ename,sal,hiredate) emp 
join dept d on e.deptno=d.deptno join salgrade s on e.sal between s.losal and s.hisal where e.rn=1;


select e.ename,e.sal,d.dname,d.loc,s.grade from emp e inner join dept d on e.deptno=d.deptno   join grade ;






