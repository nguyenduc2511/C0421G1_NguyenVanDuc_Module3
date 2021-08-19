USE furama_management_mvc;

INSERT INTO position (position_name)
VALUES ("Lễ tân"),("Phục vụ"), ("Chuyên viên"), ("Giám sát"), ("Quản lý"), ("Giám đốc");

INSERT INTO education_degree (education_degree_name)
VALUES ("Trung cấp"),("Cao đẳng"), ("Đại học"), ("Sau đại học");

INSERT INTO division (division_name)
VALUES ("Sale – Marketing"),("Hành Chính"), ("Phục vụ"), ("Quản lý");

INSERT INTO customer_type (customer_type_name)
VALUES ("Diamond"),("Platinium"), ("Gold"), ("Silver"), ("Member");

INSERT INTO service_type (type_name)
VALUES ("Villa"),("House"), ("Room"); 

insert into customer (customer_name, customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email, customer_adress, customer_type_id)
values ('Nguyen Van A', '1995-05-20', 0, '123456789', '0123456789', 'vanA@gmail.com', 'Da Nang', 1),
('Nguyen Van B', '1995-05-20', 1, '123456789', '0123456789', 'vanB@gmail.com', 'Quãng nam', 2),
('Nguyen Van C', '1995-05-20', 0, '123456789', '0123456789', 'vanC@gmail.com', 'huế', 3),
('Nguyen Van D', '1995-05-20', 1, '123456789', '0123456789', 'vanD@gmail.com', 'Hà Nội', 4),
('Nguyen Van E', '1995-05-20', 0, '123456789', '0123456789', 'vanE@gmail.com', 'Da Nang', 5);

