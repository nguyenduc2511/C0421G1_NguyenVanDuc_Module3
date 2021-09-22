use student_management;

create table student_management.class(
id int auto_increment primary key,
`name` varchar(45) null);
create table student_management.teacher(
id int auto_increment primary key,
`name` varchar(50),
age int,
country varchar(45));



