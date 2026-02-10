select * from science_curriculam;

--update Alice Johnson marks to 90

update science_curriculam
set science_marks=90
where name='Alice Johnson';

--Delete the row containing details of student named ‘Robb’ i don't have original data so i am deleting 'victor' data.

delete from science_curriculam
where name='Victor';

--Rename the column ‘science_marks’ to ‘marks_obtained’.

alter table science_curriculam
rename column science_marks to marks_obtained

--4.	Update the marks of student Brian to 65.

update science_curriculam
set marks_obtained=65
where name='Brain';
