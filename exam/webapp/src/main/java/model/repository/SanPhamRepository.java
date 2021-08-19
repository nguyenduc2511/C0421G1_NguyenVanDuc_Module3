package model.repository;

import model.bean.SanPham;

import java.util.List;

public interface SanPhamRepository {
    List<SanPham> getList();
    boolean createSanPham(SanPham sanPham);
    boolean editSanPham(SanPham sanPham);
    boolean deleteSanPham(int id);
    SanPham findById(int id);
}
