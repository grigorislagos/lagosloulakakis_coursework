select firstname, lastname from worker e
inner join dept s
on e.departmentid = s.departmentid
where salary > (select avg(salary) from worker)
and departmentname = 'Development';
