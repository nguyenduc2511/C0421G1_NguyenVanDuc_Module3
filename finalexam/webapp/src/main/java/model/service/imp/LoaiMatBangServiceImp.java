package model.service.imp;

import model.bean.MatBang.LoaiMatbang;
import model.reponsitory.LoaiMatBangRepository;
import model.reponsitory.impl.LoaiMatBangRepositoryImp;
import model.service.LoaiMatbangService;

import java.util.List;

public class LoaiMatBangServiceImp implements LoaiMatbangService {
    private LoaiMatBangRepository loaiMatBangRepository = new LoaiMatBangRepositoryImp();
    @Override
    public List<LoaiMatbang> getList() {
        return this.loaiMatBangRepository.getList();
    }
}
