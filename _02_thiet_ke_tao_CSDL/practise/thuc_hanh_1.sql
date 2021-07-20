drop database if exists oder_management;
create database oder_management;
use oder_management;

create table oder_management.don_vi_dh(
ma_dv_dh int auto_increment primary key,
ten_dv_dh varchar(50) not null,
dia_chi varchar(100) not null,
dien_thoai varchar(10));
-- Bạn có thể sử dụng BIGINT thay vì INT để lưu trữ dưới dạng số. Sử dụng BIGINT sẽ giúp bạn tiết kiệm 3 byte mỗi hàng so với VARCHAR (10).-- 

create table oder_management.hang_hoa(
ma_hh int auto_increment primary key,
ten_hh varchar(50) not null,
don_vi_tinh int not null,
mo_ta_hang varchar(200) not null);

create table oder_management.nguoi_dh(
ma_nguoi_dh int auto_increment primary key,
ten_nguoi_dh varchar(50) not null,
ma_dv int,
foreign key (ma_dv) references don_vi_dh (ma_dv_dh)
);

create table oder_management.noi_giao(
ma_dd_giao int auto_increment primary key,
ten_dd_giao varchar(100) not null);

create table oder_management.nguoi_nhan(
ma_nguoi_nhan int auto_increment primary key,
ten_nguoi_nhan varchar(50) not null,
ma_dv int,
foreign key (ma_dv) references don_vi_dh (ma_dv_dh)
);

create table oder_management.nguoi_giao(
ma_nguoi_giao int auto_increment primary key,
ten_nguoi_giao varchar(50) not null);

create table oder_management.dat_hang(
ma_dh int auto_increment primary key,
ngay_dat date not null,
so_luong int not null,
ma_nguoi_dh int,
foreign key (ma_nguoi_dh) references nguoi_dh (ma_nguoi_dh));

create table oder_management.dat(
ma_dh int,
ma_hh int,
primary key(ma_dh, ma_hh),
foreign key(ma_dh) references dat_hang (ma_dh),
foreign key (ma_hh) references hang_hoa (ma_hh));

create table oder_management.giao_hang(
ma_gh int auto_increment primary key,
ngay_giao date not null,
so_luong int not null,
don_gia int not null,
ma_nguoi_nh int,
ma_nguoi_giao int,
noi_giao int,
foreign key (ma_nguoi_nh) references nguoi_nhan (ma_nguoi_nhan),
foreign key (ma_nguoi_giao) references nguoi_giao (ma_nguoi_giao),
foreign key (noi_giao) references noi_giao (ma_dd_giao)
);

create table oder_management.giao(
ma_gh int,
ma_hh int,
primary key(ma_gh, ma_hh),
foreign key(ma_gh) references giao_hang (ma_gh),
foreign key (ma_hh) references hang_hoa (ma_hh));
