select projno, projname, budget from project
where (date - startDate >= 3);
