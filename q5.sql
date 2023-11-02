select * from project 
where expectedDurationWeeks= (select min(expectedDurationWeeks) from project);
