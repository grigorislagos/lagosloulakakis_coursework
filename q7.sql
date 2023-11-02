select firstname |
| ' ' |
| lastname as "Full Name" from Worker e
inner join assign s
on e.empid=s.empid
where firstname = 'Liu' and lastname = 'Jun-Min' 
