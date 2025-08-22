use batch61;
#second highestsalary
select * from (select *,dense_rank() over(partition by deptno order by sal desc) as rnk from emp)  as emp2 where rnk=2;
#update salary
call Update_Sal(7369,10);#800---->880sal incre
select*from emp;
