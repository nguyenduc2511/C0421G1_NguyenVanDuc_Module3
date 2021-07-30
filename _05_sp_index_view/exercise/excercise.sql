drop database demo_product;
create database demo_product;
use demo_product;
create table Products (
id INT primary key auto_increment,
product_Code VARCHAR(45),
product_Name VARCHAR(45),
product_Price DECIMAL (18,2),
product_Amount INT,
product_Description VARCHAR(100),
product_Status VARCHAR(30)
);

insert into products (product_Code,product_Name,product_Price,product_Amount,product_Description,product_Status)
values ('KM-0001', 'Khăn mặt', 30000, 50, 'Khăn lông ', 'còn hàng' ),
('KDR-0002', 'Kem đánh răng', 45000, 90, 'Kem đánh răng than hoạt tính', 'còn hàng' ),
('BCBC-0003', 'Bàn chải bồn cầu', 60000, 45, 'bàn chải ', 'còn hàng' ),
('Gif-0004', 'nước lau sàn gif', 50000, 20, 'nước lau sàn ', 'còn hàng' ),
('VIM-0005', 'Nước tẩy bồn cầu', 45000, null, 'đánh bay vi khuẩn', 'hết hàng' );

create unique index index_code ON products (product_Code);

alter table products
add index Composite_index (product_Name,product_Price);

explain select*
from products 
where product_Code = 'Gif-0004';

DROP INDEX composite_index ON products;

create view v_products AS (
select  product_Code,product_Name,product_Price, product_Status
from products
); 
select*FROM v_products;

create or replace view  v_products as 
select id, product_Code,product_Name,product_Price, product_Status
from products
where product_Price = 45000;

drop view v_products;

delimiter //
create procedure query_sp ()
begin
select*
from Products;
end;
// delimiter ;
drop procedure `query_sp`;
CALL query_sp();

delimiter //
create procedure insert_sp (id INT, product_Code  VARCHAR(45),product_Name  VARCHAR(45),product_Price DECIMAL (18,2),product_Amount INT,
product_Description VARCHAR(100),product_Status VARCHAR(30))
begin
insert into Products
values (id, product_Code,product_Name,product_Price,product_Amount,product_Description,product_Status);
end;
// delimiter ;
drop procedure `insert_sp`;
CALL insert_sp(6,'KDR-0002', 'Kem đánh răng', 45000, 90, 'Kem đánh răng than hoạt tính', 'còn hàng' );

delimiter //
create procedure update_sp (p_id INT, p_product_price INT)
begin
update Products
set product_price = p_product_price
where id = p_id;
end;
// delimiter ;

delimiter //
create procedure delete_sp (p_id INT)
begin
delete 
from Products
where id = p_id;
end;
// delimiter ;
call delete_sp(1);
