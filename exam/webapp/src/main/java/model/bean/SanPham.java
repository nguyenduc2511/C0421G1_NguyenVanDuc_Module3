package model.bean;

public class SanPham {
    private int id;
    private String ten;
    private Double gia;
    private int soluong;
    private String mauSac;
    private String thongTin;
    private String DanhMuc;

    public SanPham() {
    }

    public SanPham( String ten, Double gia, int soluong, String mauSac, String thongTin, String danhMuc) {

        this.ten = ten;
        this.gia = gia;
        this.soluong = soluong;
        this.mauSac = mauSac;
        this.thongTin = thongTin;
        DanhMuc = danhMuc;
    }

    public SanPham(int id, String ten, Double gia, int soluong, String mauSac, String thongTin, String danhMuc) {
        this.id = id;
        this.ten = ten;
        this.gia = gia;
        this.soluong = soluong;
        this.mauSac = mauSac;
        this.thongTin = thongTin;
        DanhMuc = danhMuc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Double getGia() {
        return gia;
    }

    public void setGia(Double gia) {
        this.gia = gia;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getMauSac() {
        return mauSac;
    }

    public void setMauSac(String mauSac) {
        this.mauSac = mauSac;
    }

    public String getThongTin() {
        return thongTin;
    }

    public void setThongTin(String thongTin) {
        this.thongTin = thongTin;
    }

    public String getDanhMuc() {
        return DanhMuc;
    }

    public void setDanhMuc(String danhMuc) {
        DanhMuc = danhMuc;
    }
}
