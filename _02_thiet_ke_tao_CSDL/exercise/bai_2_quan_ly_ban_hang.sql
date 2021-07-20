drop database if exists quan_ly_ban_hang;
create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table customer(
id_c int auto_increment primary key,
name_c varchar(50) not null,
age_c int not null);

create table `order`(
id_o int auto_increment primary key,
id_c int,
date_o datetime,
total_price_o int,
foreign key (id_c) references customer(id_c));

create table product(
id_p int auto_increment primary key,
name_p varchar(50) not null,
price_p int);

create table order_detail(
id_o int,
id_p int,
od_qty int,
primary key (id_o, id_p),
foreign key (id_o) references `order`(id_o),
foreign key (id_p) references product(id_p));
