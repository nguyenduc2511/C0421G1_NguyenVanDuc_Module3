package model.service.Imp;

import model.bean.SanPham;
import model.repository.Imp.SanPhamRepositoryImp;
import model.repository.SanPhamRepository;
import model.service.SanPhamService;

import java.util.List;

public class SanPhamServiceImp implements SanPhamService {
    private SanPhamRepository sanPhamRepository = new SanPhamRepositoryImp();
    @Override
    public List<SanPham> getList() {
        return this.sanPhamRepository.getList();
    }

    @Override
    public boolean createSanpham(SanPham sanpham) {
        return this.sanPhamRepository.createSanPham(sanpham);
    }

    @Override
    public boolean editSanPham(SanPham sanpham) {
        return this.sanPhamRepository.editSanPham(sanpham);
    }

    @Override
    public boolean deleteSanPham(int id) {
        return this.sanPhamRepository.deleteSanPham(id);
    }

    @Override
    public SanPham findById(int id) {
        return this.sanPhamRepository.findById(id);
    }
}
