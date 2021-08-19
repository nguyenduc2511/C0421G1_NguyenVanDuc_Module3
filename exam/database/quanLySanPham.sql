DROP DATABASE IF EXISTS quan_ly_san_pham;
CREATE DATABASE quan_ly_san_pham;
USE quan_ly_san_pham;
-- creat category:
CREATE TABLE category (
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR (45)
);
CREATE TABLE sanPham (
sanPham_id INT PRIMARY KEY AUTO_INCREMENT,
sanPham_name VARCHAR (45),
category_id INT,
sanPham_gia double,
sanPham_soluong INT,
sanPham_color VARCHAR (45),
sanPham_infor VARCHAR (45),
FOREIGN KEY (category_id) REFERENCES category (category_id)
);

insert into category (category_name)
values ('Phone'),('Tivi'),('tủ lạnh'),('máy giặt');


insert into sanPham (sanPham_name,sanPham_gia ,sanPham_soluong,sanPham_color,sanPham_infor,category_id)
values ('Iphone11', 779.0, 12, 'Black,Yellow,Green', 'iphone new 99', 1),
('Iphone11 Pro', 800.0, 12, 'Black,Yellow,Green', 'iphone new 99', 1),
('Iphone11 X', 650.0, 12, 'Black,Yellow,Green', 'iphone new 99', 1),
('Smart tivi 55 inch', 999.0, 12, 'Black,Yellow,Green', 'tivi màn hình cong', 2),
('tủ lạnh samsung', 1500.0, 12, 'Black,Yellow,Green', 'tủ lạnh tiết kiệm điện năng', 3);




