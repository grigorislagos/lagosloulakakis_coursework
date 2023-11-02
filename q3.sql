select firstName, lastName from worker e
inner join assign s
on e.empid = s.empid
where projno = 1040
order by e.lastname;
