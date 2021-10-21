package model.bean.MatBang;

public class Matbang {
//    matBang_id INT PRIMARY KEY AUTO_INCREMENT,
//    matBang_id_name varchar(4) unique,
//    matBang_name VARCHAR (45),
//    matBang_dien_tich int,
//    matBang_tang int default 15,
//    loai_mat_bang_id INT,
//    trang_thai_id INT,
//    matBang_gia double,
//    ngay_bat_dau date,
//    ngay_ket_thuc date,
    private int id;
    private String id_name;
    private String name;
    private  int dienTich;
    private  int tang;
    private String loaiMatBang;
    private String trangThai;
    private double gia;
    private String ngayBatDau;
    private String ngayKetThuc;

    public Matbang(int id, String id_name, String name, int dienTich, int tang, String loaiMatBang, String trangThai, double gia, String ngayBatDau, String ngayKetThuc) {
        this.id = id;
        this.id_name = id_name;
        this.name = name;
        this.dienTich = dienTich;
        this.tang = tang;
        this.loaiMatBang = loaiMatBang;
        this.trangThai = trangThai;
        this.gia = gia;
        this.ngayBatDau = ngayBatDau;
        this.ngayKetThuc = ngayKetThuc;
    }

    public Matbang() {
    }

    public Matbang(String name, int dienTich, String loaiMatBang, String trangThai, double gia, String ngayBatDau, String ngayKetThuc) {
        this.name = name;
        this.dienTich = dienTich;
        this.loaiMatBang = loaiMatBang;
        this.trangThai = trangThai;
        this.gia = gia;
        this.ngayBatDau = ngayBatDau;
        this.ngayKetThuc = ngayKetThuc;
    }

    public Matbang(String id_name, String name, int dienTich, String loaiMatBang, String trangThai, double gia, String ngayBatDau, String ngayKetThuc) {
        this.id_name = id_name;
        this.name = name;
        this.dienTich = dienTich;
        this.loaiMatBang = loaiMatBang;
        this.trangThai = trangThai;
        this.gia = gia;
        this.ngayBatDau = ngayBatDau;
        this.ngayKetThuc = ngayKetThuc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getId_name() {
        return id_name;
    }

    public void setId_name(String id_name) {
        this.id_name = id_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDienTich() {
        return dienTich;
    }

    public void setDienTich(int dienTich) {
        this.dienTich = dienTich;
    }

    public int getTang() {
        return tang;
    }

    public void setTang(int tang) {
        this.tang = tang;
    }

    public String getLoaiMatBang() {
        return loaiMatBang;
    }

    public void setLoaiMatBang(String loaiMatBang) {
        this.loaiMatBang = loaiMatBang;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public String getNgayBatDau() {
        return ngayBatDau;
    }

    public void setNgayBatDau(String ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    public String getNgayKetThuc() {
        return ngayKetThuc;
    }

    public void setNgayKetThuc(String ngayKetThuc) {
        this.ngayKetThuc = ngayKetThuc;
    }

}
