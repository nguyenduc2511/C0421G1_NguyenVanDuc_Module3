package model.service.imp;

import model.bean.MatBang.TrangThai;
import model.reponsitory.TrangThaiRepository;
import model.reponsitory.impl.TrangThaiRepositoryImp;
import model.service.TrangThaiService;

import java.util.List;

public class TrangThaiServiceImp implements TrangThaiService {
    private TrangThaiRepository trangThaiRepository = new TrangThaiRepositoryImp();
    @Override
    public List<TrangThai> getList() {
        return this.trangThaiRepository.getList();
    }
}
