select * from science_curriculam;

--name of students who have scored more than 65 marks

select name from science_curriculam where science_marks>65;

--students who have scored more than 35 but less than 65 marks

select * from science_curriculam where science_marks>35 and science_marks<65;

--students who have scored less than or equal to 35 or more than or equal to 65

select * from science_curriculam where science_marks<=35 or science_marks>=65;
