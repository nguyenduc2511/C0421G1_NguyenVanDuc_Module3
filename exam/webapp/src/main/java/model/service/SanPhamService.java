package model.service;

import model.bean.SanPham;

import java.util.List;

public interface SanPhamService {
    List<SanPham> getList();
    boolean createSanpham(SanPham sanpham);
    boolean editSanPham(SanPham sanpham);
    boolean deleteSanPham(int id);
    SanPham findById(int id);
}
