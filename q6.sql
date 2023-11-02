select firstname, lastname from worker e
inner join assign s
on e.empid = s.empid
inner join dept d on e.projno = s.projno
where projno=1019;
