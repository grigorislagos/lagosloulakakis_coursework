--1
select firstName, lastName from WORKER e
inner join dept s
on e.departmentID = s.departmentID
where departmentname = 'Development'
and salary > 30000;

--2
select * from project
where budget > 350000;

--3
select projno, projname, budget from project
where (date - startDate >= 3);

--4
select firstName, lastName from worker e
inner join assign s
on e.empid = s.empid
where projno = 1040
order by e.lastname;

--5
select firstname, lastname from worker e
inner join dept s
on e.departmentid = s.departmentid
where salary > (select avg(salary) from worker)
and departmentname = 'Development';
 
 
--6
select * from project 
where expectedDurationWeeks= (select min(expectedDurationWeeks) from project);

--7
select firstname, lastname from worker e
inner join assign s
on e.empid = s.empid
inner join dept d on e.projno = s.projno
where projno=1019;


--8 
select firstname || ' ' || lastname as "Full Name" from Worker e
inner join assign s
on e.empid=s.empid
where firstname = 'Liu' and lastname = 'Jun-Min' 

--9
create view ProjectDetails as select projno, projname from project;

alter table ProjectDetails add firstname, lastname from worker char;

--10
select count(projname) from ProjectDetails 
where empid = 103