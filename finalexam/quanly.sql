DROP DATABASE IF EXISTS quan_ly_mat_bang;
CREATE DATABASE quan_ly_mat_bang;
USE quan_ly_mat_bang;

CREATE TABLE loai_mat_bang (
loai_mat_bang_id INT PRIMARY KEY AUTO_INCREMENT,
loai_mat_bang_name VARCHAR (45)
);
CREATE TABLE trang_thai (
trang_thai_id INT PRIMARY KEY AUTO_INCREMENT,
trang_thai_name VARCHAR (45)
);

CREATE TABLE matBang (
matBang_id INT PRIMARY KEY AUTO_INCREMENT,
matBang_id_name  varchar(4) unique,
matBang_name VARCHAR (45),
matBang_dien_tich int,
matBang_tang int default 15,
loai_mat_bang_id INT,
trang_thai_id INT,
matBang_gia double,
ngay_bat_dau date,
ngay_ket_thuc date,
FOREIGN KEY (loai_mat_bang_id) REFERENCES loai_mat_bang (loai_mat_bang_id),
FOREIGN KEY (trang_thai_id) REFERENCES trang_thai (trang_thai_id)
);

select matBang_id, matBang_id_name, matBang_name, matBang_dien_tich, matBang_tang, loai_mat_bang_name,
 trang_thai_name, matBang_gia, ngay_bat_dau, ngay_ket_thuc
from matBang c inner join loai_mat_bang ct on c.loai_mat_bang_id = ct.loai_mat_bang_id
               inner join trang_thai s on c.trang_thai_id = s.trang_thai_id 
ORDER BY matBang_dien_tich;


INSERT INTO loai_mat_bang (loai_mat_bang_name)
VALUES ("Văn Phòng chia sẻ"),("Văn phòng trọn gói");

INSERT INTO trang_thai (trang_thai_name)
VALUES ("Trống"),("Hạ tầng"),("Đầy đủ");

select trang_thai_id, trang_thai_name
from trang_thai;

select loai_mat_bang_id, loai_mat_bang_name
from loai_mat_bang;

                        
INSERT INTO matBang (matBang_id_name,matBang_name,matBang_dien_tich,loai_mat_bang_id,trang_thai_id,
matBang_gia,ngay_bat_dau,ngay_ket_thuc)
VALUES ("MB01",'mặt bằng 1',25,2,1,1500000,'2021-05-10','2021-10-10'),
("MB02",'mặt bằng 2',25,2,2,1500000,'2021-05-10','2021-11-10'),
("MB03",'mặt bằng 3',29,1,3,1500000,'2021-02-10','2021-8-10'),
("MB04",'mặt bằng 4',50,2,2,2000000,'2021-03-10','2021-7-10'),
("MB05",'mặt bằng 5',35,1,3,2500000,'2021-05-10','2021-9-10'),
("MB06",'mặt bằng 6',40,1,1,1500000,'2021-07-10','2021-9-10'),
("MB07",'mặt bằng 7',60,1,3,3500000,'2021-08-10','2021-11-10'),
("MB08",'mặt bằng 8',30,2,1,3200000,'2021-06-10','2021-12-10');


