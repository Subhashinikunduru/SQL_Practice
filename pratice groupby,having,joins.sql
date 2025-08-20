use batch61;
# USING GROUP BY CLAUSE
#-------------------------------
#List the total salary paid to each department.
select deptno,sum(sal) as total_sal_to_dept from emp group by deptno;

#Count the number of employees in each department.
select deptno,count(*) as emp_count from emp group by deptno;

#Find the average salary of employees in each job role.
select job, avg(sal) as avg_salary from emp group by job;

# Display the maximum salary in each department.
select deptno,max(sal) as max_salary from emp group by deptno;

#Show the minimum salary in each department.
select deptno, min(sal)as min_salary from emp group by deptno;

# Count how many employees are in each job title.
select job,count(*) emp_count from emp group by job;

# Calculate total commission paid for each department.
select deptno,sum(comm) total_comm_paid from emp group by deptno;

# Show average salary for each department.
select deptno,avg(sal) as avg_salary from emp group by deptno;

#Count employees per manager.
select mgr,count(*) emp_count_per_mgr from emp group by mgr;

# List total salary and total commission by job.
 select job,sum(comm) as total_comm,sum(sal) as total_sal from emp group by job;
#------------------------------------------------------------------------------------------ 
 # USEING HAVING CLAUSES

 #List departments having more than 3 employees.
 select deptno from emp group by deptno having count(*)>3;
 
 #Find job roles with average salary greater than 2000.
 select job,avg(sal) from emp group by job having avg(sal)>2000;
 
 #Show departments where total commission is more than 500.
select deptno,sum(comm) as total_comm from emp group by deptno having sum(comm)>500;
 
#Display managers who manage more than one employee.
select mgr,count(*) emp_count from emp group by mgr having count(*)>1;

# Show job roles where minimum salary is less than 1500.
select job,min(sal) from emp group by job having min(sal)<1500;

# List departments with maximum salary more than 4000.
select deptno,max(sal) as max_salary from emp group by deptno having max(sal)>4000;

#Display job titles where total salary exceeds 5000.
select job,sum(sal) as total_salary from emp group by job having sum(sal)>5000;

# Show departments having employees with average salary below 2000.
select deptno,avg(sal) as avg_salary from emp group by deptno having avg(sal)<2000;

#List departments with total salary between 3000 and 10000.
select deptno,sum(sal) as total_salary from emp group by deptno having sum(sal) between 3000 and 10000;

#Find job roles with more than 2 employees and total commission above 100.
select job ,count(*) as emp_count,sum(comm) as total_comm from emp group by job having count(*)>2 and sum(comm)>100;
#---------------------------********************************************************************_-----------------------------------------------
#JOIN WITH GROUP BY

#List department names with total salary paid (join with DEPT).
select dname,sum(sal)  as total_salary from emp as e join dept d on e.deptno=d.deptno group by dname;

#Show department location with count of employees (join with DEPT).
select d.loc,count(*) as emp_count from emp e join dept d on e.deptno=d.deptno group by d.loc;

# List job titles in each department and count them.
select job,d.dname, count(*) job_count from emp e join dept d on e.deptno=d.deptno group by job,d.dname;

# Show total salary paid in each department by location.
select sum(sal),d.deptno,d.loc from emp e join dept d on e.deptno=d.deptno group by d.deptno,d.loc;

#List department names where average salary is greater than 2000.
select d.dname,avg(sal) from emp e join dept d on e.deptno=d.deptno group by d.dname having avg(sal)>2000;



#Show the minimum salary in each department.
# Find job roles with average salary greater than 2000.
# Display job titles where total salary exceeds 5000.
# List department names with total salary paid (join with DEPT).
#List department names where average salary is greater than 2000.

select deptno,min(sal) from emp  group by deptno;

select job,avg(sal) from emp group by job having avg(sal)>2000;

select job,sum(sal) total_salary from emp group by job having sum(sal)>5000;

select d.dname,sum(sal) from emp e join dept d on e.deptno=d.deptno group by d.dname;

select d.dname,avg(sal) from emp e join dept d on  e.deptno=d.deptno group by d.dname having avg(sal)>2000;














 














