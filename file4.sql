use batch61;
select * from (select *,dense_rank() over(partition by deptno order by sal desc) as rnk from emp)  as emp2 where rnk=2;
