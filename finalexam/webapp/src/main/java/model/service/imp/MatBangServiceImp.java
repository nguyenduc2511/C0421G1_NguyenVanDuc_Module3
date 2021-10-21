package model.service.imp;

import model.bean.MatBang.Matbang;
import model.reponsitory.MatBangRepository;
import model.reponsitory.impl.MatBangRepositoryImp;
import model.service.MatBangService;

import java.util.List;

public class MatBangServiceImp implements MatBangService {
    private MatBangRepository matBangRepository = new MatBangRepositoryImp();
    @Override
    public List<Matbang> getList() {

        return this.matBangRepository.getList();
    }

    @Override
    public boolean createCustomer(Matbang matbang) {
        return this.matBangRepository.createCustomer(matbang);
    }

    @Override
    public boolean deleteCustomer(int id) {
        return this.matBangRepository.deleteCustomer(id);
    }

    @Override
    public Matbang findById(int id) {
        return this.matBangRepository.findById(id);
    }
}
