use quan_ly_sinh_vien;

select *
from student;

select * 
from student 
where Student_Name like 'h%';

select * 
from class 
where Start_Date like '%-12-%';

select * 
from `subject` 
where Credit between 3 and 5;

update student
set class_id = 2
where student_name = 'hung';

set sql_safe_updates = 0;

select s.Student_Name, sub.Sub_Name, m.mark
from student s
inner join mark m on s.Student_Id = m.Student_Id
inner join `subject` sub on m.Sub_Id = sub.Sub_Id
order by mark desc, Student_Name asc;
-- asc là sắp xếp tăng dần mặc định, desc là sắp xếp giảm dần.--  

