use quan_ly_sinh_vien;

select *
from student;

select * 
from student 
where StudentName like 'h%';

select * 
from class 
where StartDate like '%-12-%';

select * 
from `subject` 
where Credit in (3 , 5);

update student
set classid = 2
where studentname = 'hung';

set sql_safe_updates = 0;

select s.StudentName, sub.SubName, m.mark
from student s
inner join mark m on s.StudentId = m.StudentId
inner join `subject` sub on m.SubId = sub.SubId
order by mark desc, StudentName asc;
-- asc là sắp xếp tăng dần mặc định, desc là sắp xếp giảm dần.--  

