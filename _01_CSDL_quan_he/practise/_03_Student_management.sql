create database student_management;
use student_management;

create table student_management.student(
id int auto_increment primary key,
`name` varchar(50),
age int null,
country varchar(45)
);
 alter table student
 add date_of_birth date;
 
 insert into student 
value (1,'nguyen van duc',25, 'da nang', '1996-11-25');
insert into student (`name`,age,country,date_of_birth)
value ('nguyen van hai',25, 'da nang', '2000-11-25');
insert into student (`name`,country,date_of_birth)
value ('nguyen van ba', 'da nang', '1998-11-25');
insert into student 
value (5,'nguyen van nam',25, 'da nang', '1999-11-25');
insert into student (`name`,age,country,date_of_birth)
value ('nguyen van sau',25, 'da nang', '2001-11-25');
insert into student 
value (4,'nguyen van bon',25, 'da nang', '2000-11-25');

update student 
set age = 28
where id = 3;

  -- truncate table student; 
 
 DELETE FROM student WHERE id=3;
