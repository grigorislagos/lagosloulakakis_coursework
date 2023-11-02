create view ProjectDetails as select projno, projname from project;
alter table ProjectDetails add firstname, lastname from worker char;
