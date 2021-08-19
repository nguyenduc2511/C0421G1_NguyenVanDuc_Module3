DROP DATABASE IF EXISTS furama_management_mvc;
CREATE DATABASE furama_management_mvc;
USE furama_management_mvc;
-- creat ViTri:
CREATE TABLE position (
position_id INT PRIMARY KEY AUTO_INCREMENT,
position_name VARCHAR (45)
);
-- creat BoPhan:
CREATE TABLE division (
division_id INT PRIMARY KEY AUTO_INCREMENT,
division_name VARCHAR (45)
);
-- creat TrinhDo:
CREATE TABLE education_degree (
education_degree_id INT PRIMARY KEY AUTO_INCREMENT,
education_degree_name VARCHAR (45)
);

-- creat LoaiKhach:
CREATE TABLE customer_type (
customer_type_id INT PRIMARY KEY AUTO_INCREMENT,
customer_type_name VARCHAR (45)
);
-- creat KieuThue:
CREATE TABLE rental_type (
type_id INT PRIMARY KEY AUTO_INCREMENT,
type_name VARCHAR (45)
);

-- creat LoaiDichVu:
CREATE TABLE service_type (
type_id INT PRIMARY KEY AUTO_INCREMENT,
type_name VARCHAR (45)
);
-- username --
CREATE TABLE `user` (
username varchar(255) primary key,
`password` varchar(255)
);
-- role --
CREATE TABLE `role` (
role_id int PRIMARY KEY AUTO_INCREMENT,
role_name varchar(255)
);
-- user_role--
CREATE TABLE `user_role` (
role_id int ,
username varchar(255),
FOREIGN KEY (role_id) REFERENCES `role` (role_id),
FOREIGN KEY (username) REFERENCES `user` (username)
);

-- creat NhanVien:
CREATE TABLE employee (
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR (45),
position_id INT,
education_degree_id INT,
division_id INT,
employee_birthday DATE,
employee_id_card VARCHAR (45),
employee_salary INT,
employee_phone VARCHAR (45),
employee_email VARCHAR (45),
employee_adress VARCHAR (45),
username varchar(255),
FOREIGN KEY (position_id) REFERENCES position (position_id),
FOREIGN KEY (education_degree_id) REFERENCES `education_degree` (education_degree_id),
FOREIGN KEY (division_id) REFERENCES division (division_id),
foreign key (username) REFERENCES `user` (username) 
);

-- creat KhachHang:
CREATE TABLE customer (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_type_id INT,
customer_name VARCHAR (45),
customer_birthday DATE,
customer_gender bit(1),
customer_id_card VARCHAR (45),
customer_phone VARCHAR (45),
customer_email VARCHAR (45),
customer_adress VARCHAR (45),
FOREIGN KEY (customer_type_id) REFERENCES customer_type (customer_type_id)
);
-- creat DichVu:
CREATE TABLE service (
service_id INT PRIMARY KEY AUTO_INCREMENT,
service_name VARCHAR (45),
service_area INT,
service_cost Double,
service_floors INT,
service_max_person INT,
rental_type_id INT,
service_type_id INT,
standard_room varchar(45),
pool_area double,
description_other_convenience VARCHAR (45),
FOREIGN KEY (rental_type_id) REFERENCES rental_type (type_id),
FOREIGN KEY (service_type_id) REFERENCES service_type (type_id)
);
-- creat HopDong:
CREATE TABLE contract (
contract_id INT PRIMARY KEY AUTO_INCREMENT,
employee_id INT,
customer_id INT,
service_id INT,
contract_start_date DATE,
contract_end_date DATE,
contract_deposit double,
contract_total_money double,
FOREIGN KEY (employee_id) REFERENCES employee (employee_id) ON DELETE CASCADE,
FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE,
FOREIGN KEY (service_id) REFERENCES service (service_id)  ON DELETE CASCADE
);

-- creat DichVuDiKem:
CREATE TABLE attach_service (
attach_service_id INT PRIMARY KEY AUTO_INCREMENT,
attach_service_name VARCHAR (45),
attach_service_cost double,
attach_service_unit VARCHAR(10),
attach_service_status VARCHAR (45)
);

-- creat ChiTietHopDong:
CREATE TABLE contract_detail (
contract_detail_id INT PRIMARY KEY AUTO_INCREMENT,
contract_id INT NOT NULL,
attach_service_id INT,
quantity INT,
FOREIGN KEY (contract_id) REFERENCES contract (contract_id) ON DELETE CASCADE,
FOREIGN KEY (attach_service_id) REFERENCES attach_service (attach_service_id)
);


