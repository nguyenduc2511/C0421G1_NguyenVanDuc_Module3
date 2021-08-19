package model.service.Imp;

import model.bean.DanhMuc;
import model.repository.DanhMucRepository;
import model.repository.Imp.DanhmucRepositoryImp;
import model.service.DanhMucService;

import java.util.List;

public class DanhmucServiceImp implements DanhMucService {
    private DanhMucRepository danhMucRepository = new DanhmucRepositoryImp();
    @Override
    public List<DanhMuc> getList() {
        return this.danhMucRepository.getList();
    }
}
