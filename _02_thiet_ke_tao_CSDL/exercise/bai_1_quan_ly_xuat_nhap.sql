drop database if exists quan_ly_xuat_nhap;
create database quan_ly_xuat_nhap;
use quan_ly_xuat_nhap;

create table phieu_xuat(
so_px int auto_increment primary key,
ngay_xuat datetime);

create table vat_tu(
ma_vt int auto_increment primary key,
ten_vt varchar(50) not null);

create table phieu_nhap(
so_pn int auto_increment primary key,
ngay_nhap datetime);

create table sdt_ncc(
id_sdt int auto_increment primary key,
so_dt varchar(10) not null
);

create table nha_cung_cap(
ma_nha_cc int auto_increment primary key,
ten_ncc varchar(50) not null,
dia_chi varchar(200) not null,
id_sdt int,
foreign key (id_sdt) references sdt_ncc (id_sdt));

create table don_dh(
so_dh int auto_increment primary key,
ngay_dh datetime,
ma_nha_cc int,
foreign key (ma_nha_cc) references nha_cung_cap(ma_nha_cc));

create table chi_tiet_dat_hang(
so_dh int,
ma_vt int,
primary key (so_dh, ma_vt),
foreign key (so_dh) references don_dh(so_dh),
foreign key (ma_vt) references vat_tu(ma_vt));

create table chi_tiet_phieu_nhap(
so_pn int,
ma_vt int,
don_gia_nhap int,
so_luong_nhap int,
primary key (so_pn, ma_vt),
foreign key (so_pn) references phieu_nhap(so_pn),
foreign key (ma_vt) references vat_tu(ma_vt));

create table chi_tiet_phieu_xuat(
so_px int,
ma_vt int,
don_gia_xuat int,	
so_luong_xuat int,
primary key (so_px, ma_vt),
foreign key (so_px) references phieu_xuat(so_px),
foreign key (ma_vt) references vat_tu(ma_vt));